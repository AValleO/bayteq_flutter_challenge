import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/products/data/datasources/local/product_local_data_source.dart';
import 'package:bayteq_flutter_challenge/features/products/data/datasources/remote/product_remote_data_source.dart';
import 'package:bayteq_flutter_challenge/features/products/domain/entities/product.dart';
import 'package:bayteq_flutter_challenge/features/products/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

/// Gestiona la obtención de productos y la paginación
/// Orquesta entre datos remotos (API) y datos locales (SharedPreferences)
class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;
  final ProductLocalDataSource localDataSource;

  const ProductRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, PaginatedProducts>> getProducts({
    int limit = 10,
    int skip = 0,
  }) async {
    try {
      // Estrategia: Primero intentar obtener de la red, luego cachear
      // Si skip = 0, es la primera página, intentamos también el caché primero
      
      if (skip == 0) {
        // Primera página - intentar caché primero
        final hasCache = await localDataSource.hasCache();
        if (hasCache) {
          final cachedProducts = await localDataSource.getCachedProducts();
          if (cachedProducts.isNotEmpty) {
            // Retornar productos cacheados mientras actualizamos en background
            _refreshCacheInBackground(limit, skip);
            
            final paginatedResult = PaginatedProducts(
              products: cachedProducts,
              total: cachedProducts.length,
              skip: 0,
              limit: limit,
            );
            return Right(paginatedResult);
          }
        }
      }

      // Obtener de la red
      final response = await remoteDataSource.getProducts(
        limit: limit,
        skip: skip,
      );

      final products = response.products
          .map((dto) => dto.toModel() as Product)
          .toList();

      // Cachear los resultados
      if (skip == 0) {
        // Primera página - reemplazar caché
        await localDataSource.cacheProducts(
          response.products.map((dto) => dto.toModel()).toList(),
        );
      } else {
        // Páginas siguientes - agregar al caché
        await localDataSource.appendProducts(
          response.products.map((dto) => dto.toModel()).toList(),
        );
      }

      final paginatedResult = PaginatedProducts(
        products: products,
        total: response.total,
        skip: response.skip,
        limit: response.limit,
      );
      return Right(paginatedResult);
    } on DioException catch (e) {
      // Si falla la red, intentar retornar del caché
      if (skip == 0) {
        try {
          final cachedProducts = await localDataSource.getCachedProducts();
          if (cachedProducts.isNotEmpty) {
            final paginatedResult = PaginatedProducts(
              products: cachedProducts,
              total: cachedProducts.length,
              skip: 0,
              limit: limit,
            );
            return Right(paginatedResult);
          }
        } catch (_) {
          // Ignorar error de caché y retornar el error de red
        }
      }
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  /// Actualiza el caché en background sin bloquear la UI
  Future<void> _refreshCacheInBackground(int limit, int skip) async {
    try {
      final response = await remoteDataSource.getProducts(
        limit: limit,
        skip: skip,
      );
      await localDataSource.cacheProducts(
        response.products.map((dto) => dto.toModel()).toList(),
      );
    } catch (_) {
      // Ignorar errores en actualización de background
    }
  }

  @override
  Future<Either<Failure, Product>> getProductById(int id) async {
    try {
      // Intentar obtener del caché primero
      final cachedProducts = await localDataSource.getCachedProducts();
      final cachedProduct = cachedProducts.cast<Product?>().firstWhere(
        (p) => p?.id == id,
        orElse: () => null,
      );

      // Si está en caché, retornarlo y actualizar en background
      if (cachedProduct != null) {
        _refreshProductInBackground(id);
        return Right(cachedProduct);
      }

      // Si no está en caché, obtener de la red
      final dto = await remoteDataSource.getProductById(id);
      final product = dto.toModel() as Product;
      return Right(product);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  /// Actualiza un producto específico en background
  Future<void> _refreshProductInBackground(int id) async {
    try {
      final dto = await remoteDataSource.getProductById(id);
      await localDataSource.updateCachedProduct(dto.toModel());
    } catch (_) {
      // Ignorar errores en actualización de background
    }
  }

  @override
  Future<Either<Failure, Product>> updateProduct(Product product) async {
    try {
      final dto = await remoteDataSource.updateProduct(
        id: product.id,
        title: product.title,
        price: product.price,
        description: product.description,
        category: product.category,
      );
      final updatedProduct = dto.toModel() as Product;
      
      // Actualizar en el caché local
      await localDataSource.updateCachedProduct(dto.toModel());
      
      return Right(updatedProduct);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> deleteProduct(int id) async {
    try {
      await remoteDataSource.deleteProduct(id);
      
      // Eliminar del caché local
      await localDataSource.deleteCachedProduct(id);
      
      return const Right(null);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

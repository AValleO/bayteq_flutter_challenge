import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/products/data/datasources/remote/product_remote_data_source.dart';
import 'package:bayteq_flutter_challenge/features/products/domain/entities/product.dart';
import 'package:bayteq_flutter_challenge/features/products/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

/// Gestiona la obtención de productos y la paginación
class ProductRepositoryImpl implements ProductRepository {
  final ProductRemoteDataSource remoteDataSource;

  const ProductRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, PaginatedProducts>> getProducts({
    int limit = 10,
    int skip = 0,
  }) async {
    try {
      final response = await remoteDataSource.getProducts(
        limit: limit,
        skip: skip,
      );

      final products = response.products
          .map((dto) => dto.toModel() as Product)
          .toList();

      final paginatedProducts = PaginatedProducts(
        products: products,
        total: response.total,
        limit: response.limit,
        skip: response.skip,
      );
      return Right(paginatedProducts);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, Product>> getProductById(int id) async {
    try {
      final dto = await remoteDataSource.getProductById(id);
      final product = dto.toModel() as Product;
      return Right(product);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
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
      return const Right(null);
    } on DioException catch (e) {
      return Left(ServerFailure(e.message ?? 'Server error'));
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }
}

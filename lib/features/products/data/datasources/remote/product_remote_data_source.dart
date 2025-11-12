import 'package:bayteq_flutter_challenge/features/products/products.dart';

/// Data source remoto para productos
abstract class ProductRemoteDataSource {
  
  /// Obtener productos con paginación
  /// [limit] - Número de productos a obtener
  /// [skip] - Número de productos a omitir (para paginación basada en offset)
  Future<ProductResponseDto> getProducts({
    required int limit,
    required int skip,
  });

  /// Obtener un producto por ID
  Future<ProductDto> getProductById(int id);

  /// Actualizar un producto
  Future<ProductDto> updateProduct({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
  });

  /// Eliminar un producto
  Future<void> deleteProduct(int id);
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ProductApiService apiService;

  ProductRemoteDataSourceImpl({required this.apiService});
  
  // const ProductRemoteDataSourceImpl(this._apiService);

  @override
  Future<ProductResponseDto> getProducts({
    required int limit,
    required int skip,
  }) async {
    return await apiService.getProducts(limit: limit, skip: skip);
  }

  @override
  Future<ProductDto> getProductById(int id) async {
    return await apiService.getProductById(id);
  }

  @override
  Future<ProductDto> updateProduct({
    required int id,
    required String title,
    required double price,
    required String description,
    required String category,
  }) async {
    return await apiService.updateProduct(
      id: id,
      data: {
        'title': title,
        'price': price,
        'description': description,
        'category': category,
      },
    );
  }

  @override
  Future<void> deleteProduct(int id) async {
    await apiService.deleteProduct(id);
  }
}

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
}

class ProductRemoteDataSourceImpl implements ProductRemoteDataSource {
  final ProductApiService _apiService;

  ProductRemoteDataSourceImpl(this._apiService);
  
  // const ProductRemoteDataSourceImpl(this._apiService);

  @override
  Future<ProductResponseDto> getProducts({
    required int limit,
    required int skip,
  }) async {
    return await _apiService.getProducts(limit: limit, skip: skip);
  }
}

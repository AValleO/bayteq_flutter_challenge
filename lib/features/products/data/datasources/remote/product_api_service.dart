import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'product_api_service.g.dart';

/// API service para autenticación
/// https://dummyjson.com/docs/auth
@RestApi()
abstract class ProductApiService {
  factory ProductApiService(Dio dio) = _ProductApiService;

  /// Obtener el listado de productos con paginación
  @GET('/products')
  Future<ProductResponseDto> getProducts({
    @Query('limit') int limit = 10,
    @Query('skip') int skip = 0,
    @Query('select') String? select = 'title,price,description,category,rating,thumbnail',
  });
}

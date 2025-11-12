import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:dartz/dartz.dart';

abstract class ProductRepository {
  /// Obtener lista paginada de productos
  /// [limit] - Número de productos por página (por defecto: 20)
  /// [skip] - Número de productos a omitir (por defecto: 0)
  Future<Either<Failure, PaginatedProducts>> getProducts({
    int limit = 20,
    int skip = 0,
  });
}
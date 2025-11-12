import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/products/domain/entities/product.dart';
import 'package:bayteq_flutter_challenge/features/products/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

/// Use case para obtener un producto por ID
class GetProductById {
  final ProductRepository repository;

  const GetProductById(this.repository);

  Future<Either<Failure, Product>> call(int id) async {
    return await repository.getProductById(id);
  }
}

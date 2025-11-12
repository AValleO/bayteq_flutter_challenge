import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/products/domain/entities/product.dart';
import 'package:bayteq_flutter_challenge/features/products/domain/repositories/product_repository.dart';
import 'package:dartz/dartz.dart';

/// Use case para actualizar un producto
class UpdateProduct {
  final ProductRepository repository;

  const UpdateProduct(this.repository);

  Future<Either<Failure, Product>> call(Product product) async {
    return await repository.updateProduct(product);
  }
}

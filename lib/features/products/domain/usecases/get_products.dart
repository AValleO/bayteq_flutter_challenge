import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetProducts {
  final ProductRepository repository;

  GetProducts(this.repository);

  Future<Either<Failure, List<Product>>> call(PaginationParams params) async {
    // Validaciones necesarias antes de llamar al repositorio
    if (params.limit <= 0) {
      return Left(ValidationFailure('Limit debe ser mayor que 0'));
    }

    // All validations passed - delegate to repository
    return await repository.getProducts(
      limit: params.limit,
      skip: params.skip,
    );
  }
}

class PaginationParams extends Equatable {
  final int limit;
  final int skip;

  const PaginationParams({
    this.limit = 20,
    this.skip = 0,
  });

  @override
  List<Object?> get props => [limit, skip];
}
import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:dartz/dartz.dart';

class LogoutUser {
  final AuthRepository repository;

  LogoutUser(this.repository);

  Future<Either<Failure, void>> call() async {
    return await repository.logout();
  }
}
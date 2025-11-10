import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class LoginUser {
  final AuthRepository repository;

  LoginUser(this.repository);

  Future<Either<Failure, User>> call(LoginParams params) async {
    // Validaciones necesarias antes de llamar al repositorio
    final usernameError = ValidationRules.validateUsername(params.username);
    if (usernameError != null) {
      return Left(ValidationFailure(usernameError));
    }

    final passwordError = ValidationRules.validatePassword(params.password);
    if (passwordError != null) {
      return Left(ValidationFailure(passwordError));
    }

    // All validations passed - delegate to repository
    return await repository.login(
      username: params.username,
      password: params.password,
    );
  }
}

class LoginParams extends Equatable {
  final String username;
  final String password;

  const LoginParams({
    required this.username,
    required this.password,
  });

  @override
  List<Object?> get props => [username, password];
}
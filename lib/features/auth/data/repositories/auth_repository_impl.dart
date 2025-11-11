import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  final AuthLocalDataSource localDataSource;

  AuthRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, User>> login({
    required String username,
    required String password,
  }) async {
    try {
      // Obtengo el login response desde el data source remoto
      final loginResponse = await remoteDataSource.login(
        username: username,
        password: password,
      );

      // Guardo los tokens en el almacenamiento local
      await localDataSource.saveAccessToken(loginResponse.accessToken);
      await localDataSource.saveRefreshToken(loginResponse.refreshToken);

      // Obtengo el usuario autenticado y lo guardo en local
      final userModel = await remoteDataSource.getCurrentUser();
      await localDataSource.saveAuthenticatedUser(userModel);
      return Right(userModel);
    } catch (e) {
      return Left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, User>> getCurrentUser() async {
    try {
      final userModel = await localDataSource.getAuthenticatedUser();
      if (userModel != null) {
        return Right(userModel);
      } else {
        // Intento obtener el usuario desde el data source remoto si no está en local
        try {
          final remoteUserModel = await remoteDataSource.getCurrentUser();
          await localDataSource.saveAuthenticatedUser(remoteUserModel);
          return Right(remoteUserModel);          
        } catch (e) {
          return Left(ServerFailure(e.toString()));          
        }
      }
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, void>> logout() async {
    try {
      await localDataSource.clearTokens();
      return const Right(null);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, bool>> isAuthenticated() async {
    try {
      final hasTokens = await localDataSource.hasTokens();
      return Right(hasTokens);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}

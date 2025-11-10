import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:dartz/dartz.dart';

class AuthRepositoryImpl implements AuthRepository {
  
  final AuthRemoteDataSource remoteDataSource;

    AuthRepositoryImpl({required this.remoteDataSource});

    @override
    Future<Either<Failure, User>> login({
      required String username,
      required String password,
    }) async {
      try {
        final userModel = await remoteDataSource.login(
          username: username,
          password: password,
        );
        return Right(userModel);
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    }

    @override
    Future<Either<Failure, User>> getCurrentUser() async {
      try {
        final userModel = await remoteDataSource.getCurrentUser();
        return Right(userModel);
      } catch (e) {
        return Left(ServerFailure(e.toString()));
      }
    }

}
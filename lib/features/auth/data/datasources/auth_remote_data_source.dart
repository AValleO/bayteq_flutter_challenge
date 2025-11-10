import 'package:bayteq_flutter_challenge/features/auth/auth.dart';

abstract class AuthRemoteDataSource {

  Future<UserModel> login({
    required String email,
    required String password,
  });

  Future<UserModel> getCurrentUser();

}
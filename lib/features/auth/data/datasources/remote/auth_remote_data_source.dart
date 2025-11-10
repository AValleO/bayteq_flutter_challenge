import 'package:bayteq_flutter_challenge/features/auth/auth.dart';

abstract class AuthRemoteDataSource {

  Future<UserModel> login({
    required String username,
    required String password,
  });

  Future<UserModel> getCurrentUser();

}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiService apiService;

  AuthRemoteDataSourceImpl({required this.apiService});

  @override
  Future<UserModel> login({
    required String username,
    required String password,
  }) async {

    final loginRequest = LoginRequestDto(
      username: username,
      password: password,
    );
    await apiService.login(loginRequest);
    final userModel = await apiService.getAuthUser();
    return userModel;

  }

  @override
  Future<UserModel> getCurrentUser() async {

    final userModel = await apiService.getAuthUser();
    return userModel;
    
  }
}
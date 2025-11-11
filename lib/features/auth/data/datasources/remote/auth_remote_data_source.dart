import 'package:bayteq_flutter_challenge/features/auth/auth.dart';

abstract class AuthRemoteDataSource {
  Future<LoginResponseDto> login({
    required String username,
    required String password,
  });

  Future<UserModel> getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiService apiService;

  AuthRemoteDataSourceImpl({required this.apiService});

  @override
  Future<LoginResponseDto> login({
    required String username,
    required String password,
  }) async {
    final loginRequest = LoginRequestDto(
      username: username,
      password: password,
    );
    final loginResponse = await apiService.login(loginRequest);
    return loginResponse;
  }

  @override
  Future<UserModel> getCurrentUser() async {
    final userModel = await apiService.getAuthUser();
    return userModel;
  }
}

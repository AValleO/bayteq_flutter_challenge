import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:bayteq_flutter_challenge/features/auth/data/datasources/local/auth_local_data_source.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({
    required String username,
    required String password,
  });

  Future<UserModel> getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final AuthApiService apiService;
  final AuthLocalDataSource localDataSource;

  AuthRemoteDataSourceImpl({
    required this.apiService,
    required this.localDataSource,
  });

  @override
  Future<UserModel> login({
    required String username,
    required String password,
  }) async {
    final loginRequest = LoginRequestDto(
      username: username,
      password: password,
    );
    final loginResponse = await apiService.login(loginRequest);
    
    // Persisto los tokens en el almacenamiento seguro
    await localDataSource.saveAccessToken(loginResponse.accessToken);
    await localDataSource.saveRefreshToken(loginResponse.refreshToken);
    
    // Obtengo y retorno el usuario autenticado
    final userModel = await apiService.getAuthUser();
    return userModel;
  }

  @override
  Future<UserModel> getCurrentUser() async {
    final userModel = await apiService.getAuthUser();
    return userModel;
  }
}

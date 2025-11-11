import 'package:bayteq_flutter_challenge/features/auth/data/datasources/local/auth_local_data_source.dart';
import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  final AuthLocalDataSource _localDataSource;

  AuthInterceptor(this._localDataSource);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    // Obtener el token de acceso desde el almacenamiento seguro
    final token = await _localDataSource.getAccessToken();

    // Inyecto el token en los headers de la solicitud si está disponible
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    // Manejar errores 401 Unauthorized
    if (err.response?.statusCode == 401) {
      // El token podría haber expirado o ser inválido
      await _localDataSource.clearTokens();
      // TODO: Implementar la lógica de refresco de token aquí si es necesario
    }

    handler.next(err);
  }
}

import 'package:dio/dio.dart';

class AuthInterceptor extends Interceptor {
  String? _token;

  void setToken(String token) {
    _token = token;
  }

  void clearToken() {
    _token = null;
  }

  String? get token => _token;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // Inyección de Token en los headers si está disponible
    if (_token != null) {
      options.headers['Authorization'] = 'Bearer $_token';
    }
    // Continuar con la solicitud
    super.onRequest(options, handler);
  }
}
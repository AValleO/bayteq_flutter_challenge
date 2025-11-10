import 'package:bayteq_flutter_challenge/features/auth/data/dto/request/login_request_dto.dart';
import 'package:bayteq_flutter_challenge/features/auth/data/dto/response/login_response_dto.dart';
import 'package:bayteq_flutter_challenge/features/auth/data/models/user_model.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_api_service.g.dart';

/// API service para autenticación
/// https://dummyjson.com/docs/auth
@RestApi()
abstract class AuthApiService {
  factory AuthApiService(Dio dio) = _AuthApiService;

  /// Login user and get tokens
  @POST('/auth/login')
  Future<LoginResponseDto> login(
    @Body() LoginRequestDto request,
  );

  /// Get current auth user
  @GET('/auth/me')
  Future<UserModel> getAuthUser();
}

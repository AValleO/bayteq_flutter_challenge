import 'dart:convert';

import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

/// Data Source Local para manejo de tokens de autenticación
abstract class AuthLocalDataSource {
  Future<String?> getAccessToken();
  Future<String?> getRefreshToken();
  Future<void> saveAccessToken(String token);
  Future<void> saveRefreshToken(String token);
  Future<void> clearTokens();
  Future<bool> hasTokens();
  Future<void> saveAuthenticatedUser(UserModel user);
  Future<UserModel?> getAuthenticatedUser();
  Future<void> clearAuthenticatedUser();
}

class AuthLocalDataSourceImpl implements AuthLocalDataSource {
  final FlutterSecureStorage secureStorage;

  static const String _accessTokenKey = 'access_token';
  static const String _refreshTokenKey = 'refresh_token';
  static const String _authenticatedUserKey = 'authenticated_user';

  AuthLocalDataSourceImpl(this.secureStorage);

  @override
  Future<String?> getAccessToken() async {
    return await secureStorage.read(key: _accessTokenKey);
  }

  @override
  Future<String?> getRefreshToken() async {
    return await secureStorage.read(key: _refreshTokenKey);
  }

  @override
  Future<void> saveAccessToken(String token) async {
    await secureStorage.write(key: _accessTokenKey, value: token);
  }

  @override
  Future<void> saveRefreshToken(String token) async {
    await secureStorage.write(key: _refreshTokenKey, value: token);
  }

  @override
  Future<void> clearTokens() async {
    await secureStorage.delete(key: _accessTokenKey);
    await secureStorage.delete(key: _refreshTokenKey);
  }

  @override
  Future<bool> hasTokens() async {
    final accessToken = await getAccessToken();
    return accessToken != null && accessToken.isNotEmpty;
  }

  @override
  Future<void> saveAuthenticatedUser(UserModel user) async {
    final userJson = user.toJson().toString();
    await secureStorage.write(key: _authenticatedUserKey, value: userJson);    
  }

  @override
  Future<UserModel?> getAuthenticatedUser() async {
    final userJson = await secureStorage.read(key: _authenticatedUserKey);
    if (userJson != null) {
      return UserModel.fromJson(jsonDecode(userJson));
    }
    return null;
  }

  @override
  Future<void> clearAuthenticatedUser() async {
    await secureStorage.delete(key: _authenticatedUserKey);
  }
}
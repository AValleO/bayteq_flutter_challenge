import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

// GetIt global
final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // Registro de FlutterSecureStorage
  getIt.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(
      aOptions: AndroidOptions(
        encryptedSharedPreferences: true,
      ),
    ),
  );

  // Registro Data Sources Locales
  getIt.registerLazySingleton<AuthLocalDataSource>(
    () => AuthLocalDataSourceImpl(getIt<FlutterSecureStorage>()),
  );

  // Registro AuthInterceptor con dependencia de DataSource Local
  getIt.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(getIt<AuthLocalDataSource>()),
  );

  // Registro Dio con configuración base
  getIt.registerLazySingleton<Dio>(() {
    final dio = Dio(
      BaseOptions(
        baseUrl: 'https://dummyjson.com',
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    // Add interceptors
    dio.interceptors.addAll([
      getIt<AuthInterceptor>(),
      LoggingInterceptor(),
    ]);

    return dio;
  });

  // Registro AuthApiService y otros servicios API
  getIt.registerLazySingleton<AuthApiService>(
    () => AuthApiService(getIt<Dio>()),
  );

  // Registro Data Sources Remotos
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      apiService: getIt<AuthApiService>(),
    ),
  );

  // Registro Repositorios
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: getIt<AuthRemoteDataSource>(),
      localDataSource: getIt<AuthLocalDataSource>(),
    ),
  );

  // Registro Casos de Uso
  getIt.registerFactory<LoginUser>(
    () => LoginUser(getIt<AuthRepository>()),
  );

  // Registro Blocs
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginUserUseCase: getIt<LoginUser>(),
    ),
  );
}

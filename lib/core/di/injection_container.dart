import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:bayteq_flutter_challenge/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

// GetIt global
final getIt = GetIt.instance;

Future<void> setupDependencies() async {

  // Registro AuthInterceptor
  getIt.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(),
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

    // Añadir interceptores
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

  // Registro Data Sources
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      apiService: getIt<AuthApiService>(),
    ),
  );

  // Registro Repositorios
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: getIt<AuthRemoteDataSource>(),
    ),
  );

  // Registro Casos de Uso (Use Cases)
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

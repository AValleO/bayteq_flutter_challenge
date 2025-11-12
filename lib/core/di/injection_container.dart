import 'package:bayteq_flutter_challenge/core/core.dart';
import 'package:bayteq_flutter_challenge/features/auth/auth.dart';
import 'package:bayteq_flutter_challenge/features/products/products.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

// GetIt global
final getIt = GetIt.instance;

Future<void> setupDependencies() async {
  // Registro de SharedPreferences
  final sharedPreferences = await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);

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

  getIt.registerLazySingleton<ProductLocalDataSource>(
    () => ProductLocalDataSourceImpl(
      sharedPreferences: getIt<SharedPreferences>(),
    ),
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
  getIt.registerLazySingleton<ProductApiService>(
    () => ProductApiService(getIt<Dio>()),
  );

  // Registro Data Sources Remotos
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(
      apiService: getIt<AuthApiService>(),
    ),
  );
  getIt.registerLazySingleton<ProductRemoteDataSource>(
    () => ProductRemoteDataSourceImpl(
      apiService: getIt<ProductApiService>(),
    ),
  );

  // Registro Repositorios
  getIt.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      remoteDataSource: getIt<AuthRemoteDataSource>(),
      localDataSource: getIt<AuthLocalDataSource>(),
    ),
  );
  getIt.registerLazySingleton<ProductRepository>(
    () => ProductRepositoryImpl(
      remoteDataSource: getIt<ProductRemoteDataSource>(),
      localDataSource: getIt<ProductLocalDataSource>(),
    ),
  );

  // Registro Casos de Uso
  getIt.registerFactory<LoginUser>(
    () => LoginUser(getIt<AuthRepository>()),
  );

  getIt.registerFactory<LogoutUser>(
    () => LogoutUser(getIt<AuthRepository>()),
  );

  getIt.registerFactory<GetProducts>(
    () => GetProducts(getIt<ProductRepository>()),
  );

  getIt.registerFactory<GetProductById>(
    () => GetProductById(getIt<ProductRepository>()),
  );

  getIt.registerFactory<UpdateProduct>(
    () => UpdateProduct(getIt<ProductRepository>()),
  );

  getIt.registerFactory<DeleteProduct>(
    () => DeleteProduct(getIt<ProductRepository>()),
  );

  // Registro Blocs
  getIt.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginUserUseCase: getIt<LoginUser>(),
      logoutUserUseCase: getIt<LogoutUser>(),
    ),
  );
  getIt.registerFactory<ProductBloc>(
    () => ProductBloc(
      getProductsUseCase: getIt<GetProducts>(),
    ),
  );
  getIt.registerFactory<ProductDetailBloc>(
    () => ProductDetailBloc(
      getProductByIdUseCase: getIt<GetProductById>(),
      updateProductUseCase: getIt<UpdateProduct>(),
      deleteProductUseCase: getIt<DeleteProduct>(),
    ),
  );
}

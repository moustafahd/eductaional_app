import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:untitled2/core/networking/api_service.dart';
import 'package:untitled2/core/networking/dio_factory.dart';
import 'package:untitled2/features/auth/login/data/repos/login_repo.dart';
import 'package:untitled2/features/auth/login/logic/cubit/login_cubit.dart';
import 'package:untitled2/features/auth/register/data/repos/register_repo.dart';
import 'package:untitled2/features/auth/register/logic/cubit/register_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService 
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // Login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));

  // Register
  getIt.registerLazySingleton<RegisterRepo>(() => RegisterRepo(getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(getIt()));
}
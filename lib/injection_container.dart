import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:luccy_onboarding/dio_config/dio_client.dart';
import 'package:luccy_onboarding/features/users/data/datasource/user_remote_datasource.dart';
import 'package:luccy_onboarding/features/users/data/repositories/user_repository_impl.dart';
import 'package:luccy_onboarding/features/users/domain/repositories/user_repository.dart';
import 'package:luccy_onboarding/features/users/domain/usecases/get_users_usecase.dart';
import 'package:luccy_onboarding/features/users/presentation/bloc/user_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // user bloc
  sl
    ..registerFactory(() => UserBloc(getUsersUsecase: sl()))
    ..registerLazySingleton<GetUsersUsecase>(
        () => GetUsersUsecase(userRepository: sl()))
    ..registerLazySingleton<UserRepository>(
        () => UserRepositoryImpl(userRemoteDatasource: sl()))
    ..registerLazySingleton<UserRemoteDatasource>(
        () => UserRemoteDatasourceImpl(dio: sl()))
    ..registerLazySingleton<Dio>(() => getDio());
}

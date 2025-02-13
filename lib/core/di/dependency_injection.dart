import 'package:cine_vault/core/services/api_services.dart';
import 'package:cine_vault/features/home/data/repositories/movie_%20repositories.dart';
import 'package:cine_vault/features/home/presentation/cubits/movie_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  _initExternals();
  _initRepositories();
  _initCubits();
}

//Externals
void _initExternals() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(Dio()));
}

//Repositories
void _initRepositories() {
  getIt.registerLazySingleton<MovieRepository>(
    () => MovieRepositoryImpl(
      getIt(),
    ),
  );
}

//?Cubits
void _initCubits() {
  getIt.registerFactory<MovieCubit>(
    () => MovieCubit(
      getIt(),
    ),
  );
}

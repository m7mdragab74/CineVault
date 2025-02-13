import 'package:cine_vault/core/services/api_services.dart';
import 'package:cine_vault/features/home/data/model/movie_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failures.dart';

abstract class MovieRepository {
  Future<Either<Failure, List<MovieModel>>> getMovies();
}

class MovieRepositoryImpl implements MovieRepository {
  final ApiService apiService;

  MovieRepositoryImpl(this.apiService);

  @override
  Future<Either<Failure, List<MovieModel>>> getMovies() async {
    try {
      final response = await apiService.fetchMovies();
      final List<MovieModel> movies = [];

      for (var movie in response) {
        movies.add(MovieModel.fromJson(movie));
      }

      return right(movies);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}

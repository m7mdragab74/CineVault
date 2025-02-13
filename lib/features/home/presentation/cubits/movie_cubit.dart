import 'package:cine_vault/features/home/data/repositories/movie_%20repositories.dart';
import 'package:cine_vault/features/home/presentation/cubits/movie_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieRepository movieRepository;
  MovieCubit(this.movieRepository) : super(MovieInitial());

  Future<void> getMovies() async {
    emit(MovieLoading());
    final result = await movieRepository.getMovies();
    result.fold((failure) {
      emit(
        MovieError(failure.errorMessage),
      );
    }, (movie) {
      emit(MovieSuccess(movie));
    });
  }
}

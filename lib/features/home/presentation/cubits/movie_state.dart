import 'package:cine_vault/features/home/data/model/movie_model.dart';
import 'package:equatable/equatable.dart';

class MovieState extends Equatable {
  const MovieState();
  @override
  List<Object> get props => [];
}

final class MovieInitial extends MovieState {}

final class MovieLoading extends MovieState {}

final class MovieSuccess extends MovieState {
  final List<MovieModel> movies;
  const MovieSuccess(this.movies);

  @override
  List<Object> get props => [movies];
}

final class MovieError extends MovieState {
  final String error;
  const MovieError(this.error);

  @override
  List<Object> get props => [error];
}

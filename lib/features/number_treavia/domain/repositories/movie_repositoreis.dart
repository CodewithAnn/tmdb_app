import 'package:flutter_clean_architechture/features/core/error/failure.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:fpdart/fpdart.dart';

abstract class MovieRepositories {
  Future<Either<Failure, List<Movie>>> getTrendingMovies();
  Future<Either<Failure, List<Movie>>> getTvShows();
  Future<Either<Failure, List<Movie>>> searchMovies({required String query});
 Future<Either<Failure, List<Movie>>> getPopularMovies();
}

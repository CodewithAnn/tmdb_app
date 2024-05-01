import 'package:flutter_clean_architechture/features/core/error/failure.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';

abstract class MovieRmoteDataSource {
  /// Calls the https://api.themoviedb.org/3/trending/movie/week?language=en-US endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  ///
  Future<List<Movie>> getTrendingMovies();

  /// Calls the https://api.themoviedb.org/3/trending/tv/week?language=en-US endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  ///

  Future<List<Movie>> getTvShows();

  /// Calls the https://api.themoviedb.org/3/search/movie?query={query}&include_adult=false&language=en-US&page=1 endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  ///

  Future<List<Movie>> searchMovies({required String query});

  /// Calls the https://api.themoviedb.org/3/movie/popular?language=en-US&page=1 endpoint.
  ///
  /// Throws a [ServerException] for all error codes.
  ///

  Future<List<Movie>> getPopularMovies();
}

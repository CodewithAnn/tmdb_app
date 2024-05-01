import 'package:flutter_clean_architechture/features/core/error/failure.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/repositories/movie_repositoreis.dart';
import 'package:fpdart/src/either.dart';

class MovieRepositoryImp implements MovieRepositories{
  @override
  Future<Either<Failure, List<Movie>>> getPopularMovies() {
    // TODO: implement getPopularMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Movie>>> getTrendingMovies() {
    // TODO: implement getTrendingMovies
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Movie>>> getTvShows() {
    // TODO: implement getTvShows
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<Movie>>> searchMovies({required String query}) {
    // TODO: implement searchMovies
    throw UnimplementedError();
  }
}
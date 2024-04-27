// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_clean_architechture/features/core/error/failure.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/repositories/movie_repositoreis.dart';
import 'package:fpdart/fpdart.dart';

class GetTrendingMovies {
  final MovieRepositories repositorie;
  GetTrendingMovies({
    required this.repositorie,
  });

  Future<Either<Failure, List<Movie>>> execute() async {
    return await repositorie.getTrendingMovies();
  }
}

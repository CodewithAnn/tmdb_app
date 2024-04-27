// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter_clean_architechture/features/core/error/failure.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/repositories/movie_repositoreis.dart';
import 'package:fpdart/fpdart.dart';

class SearchMovie {
  final MovieRepositories repository;
  SearchMovie({
    required this.repository,
  });

  Future<Either<Failure, List<Movie>>> execute({required String query}) async {
    return await repository.searchMovies(query: query);
  }
}

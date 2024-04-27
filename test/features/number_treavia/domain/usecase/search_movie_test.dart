import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/repositories/movie_repositoreis.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/usecases/search_movie.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_trending_movies_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MovieRepositories>()])
void main() {
  late SearchMovie usecase;
  late MockMovieRepositories mockMovieRepositories;

  setUp(() {
    mockMovieRepositories = MockMovieRepositories();
    usecase = SearchMovie(repository: mockMovieRepositories);
  });

  final String tQuery = "X-men";
  final tSearchMovie = [
    Movie(
        id: 1,
        overview: 'Deaccac 1',
        poster_path: '/image1',
        title: 'test 1',
        name: 'name'),
    Movie(
        id: 2,
        overview: 'Deaccac 2',
        poster_path: '/image2',
        title: 'test 2',
        name: 'name 2'),
  ];

  test(
      "should search movie from movie repository",
      () => () async {
            // arrange
            when(mockMovieRepositories.searchMovies(query: tQuery))
                .thenAnswer((_) async => Right(tSearchMovie));
            // act
            final result = usecase.execute(query: tQuery);
            // assert
            expect(result, Right(tSearchMovie));
            verify(mockMovieRepositories.searchMovies(query: tQuery));
            verifyNoMoreInteractions(mockMovieRepositories);
          });
}

import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/repositories/movie_repositoreis.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/usecases/get_popular_movie.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_trending_movies_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MovieRepositories>()])
void main() {
  late GetPopularMovies usecase;
  late MockMovieRepositories mockMovieRepositories;

  setUp(() {
    mockMovieRepositories = MockMovieRepositories();
    usecase = GetPopularMovies(repositories: mockMovieRepositories);
  });

  final List<Movie> tPopularMovie = [
    Movie(
        id: 1,
        title: 'test 1',
        name: 'name test 1',
        overview: 'section 1',
        poster_path: '/image1'),
    Movie(
        id: 1,
        title: 'test 2',
        name: 'name test 2',
        overview: 'section 2',
        poster_path: '/image2'),
  ];

  test(
      'should get popular movies from MovieRepo',
      () => () async {
            // arrange
            when(mockMovieRepositories.getPopularMovies())
                .thenAnswer((_) async => Right(tPopularMovie));
            // act
            final result = usecase.execute();
            // assert
            expect(result, Right(tPopularMovie));
            verify(mockMovieRepositories.getPopularMovies());
            verifyNoMoreInteractions(mockMovieRepositories);
          });
}

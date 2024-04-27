import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/repositories/movie_repositoreis.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/usecases/get_trending_movies.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

// code genration
// import 'get_trending_movies_test.mock.dart';
import 'get_trending_movies_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MovieRepositories>()])
void main() {
  late MockMovieRepositories mockMovieRepositories;
  late GetTrendingMovies usecase;

  setUp(
    () {
      mockMovieRepositories = MockMovieRepositories();
      usecase = GetTrendingMovies(repositorie: mockMovieRepositories);
    },
  );

  final tMovieList = [
    Movie(
        id: 1,
        overview: 'discreption',
        poster_path: '/image1',
        title: 'X-men',
        name: 'Fallout'),
    Movie(
        id: 2,
        overview: 'discreption',
        poster_path: '/image2',
        title: 'Dhol',
        name: 'Cobra kai'),
  ];

  test(
      'should get trending movies from MovieRepositories',
      () => () async {
            // arrange
            when(mockMovieRepositories.getTrendingMovies())
                .thenAnswer((_) async => Right(tMovieList));
            //act
            final result = usecase.execute();
            //assert
            expect(result, Right(tMovieList));
            verify(mockMovieRepositories.getTrendingMovies());
            verifyNoMoreInteractions(mockMovieRepositories);
          });
}

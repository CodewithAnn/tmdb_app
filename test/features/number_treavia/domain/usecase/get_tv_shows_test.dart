import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/repositories/movie_repositoreis.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/usecases/get_tv_shows.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_trending_movies_test.mocks.dart';

@GenerateNiceMocks([MockSpec<MovieRepositories>()])
void main() {
  late GetTvShow usecase;
  late MockMovieRepositories mockMovieRepositories;

  setUp(() {
    mockMovieRepositories = new MockMovieRepositories();
    usecase = GetTvShow(repositories: mockMovieRepositories);
  });

  final List<Movie> tshows = [
    Movie(
        id: 1,
        overview: "dec 1",
        poster_path: '/image1',
        title: 'test-1',
        name: 'test show 1'),
    Movie(
        id: 2,
        overview: "dec 2",
        poster_path: '/image2',
        title: 'test-2',
        name: 'test show 2'),
  ];

  test(
      'should get Tv show from movieRepositories',
      () => () async {
            // arrange
            when(mockMovieRepositories.getTvShows())
                .thenAnswer((_) async => Right(tshows));
            // act
            final result = usecase.execute();
            // assert
            expect(result, Right(tshows));
            verify(mockMovieRepositories.getTvShows());
            verifyNoMoreInteractions(mockMovieRepositories);
          });
}

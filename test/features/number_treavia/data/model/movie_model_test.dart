import 'dart:convert';

import 'package:flutter_clean_architechture/features/number_treavia/data/models/movie_model.dart';
import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tMovieModel = MovieModel(
      id: 1,
      title: "Test 1",
      poster_path: '/image1',
      overview: 'Desc 1',
      name: 'Test name 1');

  test(
      'should be a sub-class of Movie ',
      () => () {
            // assert
            expect(tMovieModel, isA<Movie>());
          });

  group('from/to json', () {
    test(
        'should return a valid model from json',
        () => () async {
              // arrange
              final Map<String, dynamic> jsonMap =
                  json.decode('helpers/dummy_data/dummy_movie_response.json');

              // act
              final result = MovieModel.fromJson(jsonMap);
              // assert
              expect(result, tMovieModel);
            });
  });
}

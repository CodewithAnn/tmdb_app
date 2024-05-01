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

  group('to json', () {
    test(
        'should get JSON map containing proper data ',
        () => () async {
              // act
              final result = tMovieModel.toJson();

              // assert
              final expectedJsonMap = {
                "id": 693134,
                "original_title": "Rebel Moon - Part Two: The Scargiver",
                "overview":
                    "The rebels gear up for battle against the ruthless forces of the Motherworld as unbreakable bonds are forged, heroes emerge — and legends are made.",
                "poster_path": "/1pdfLvkbY9ohJlCjQH2CZjjYVvJ.jpg",
                "title": "Dune: Part Two",
                "name": "Test name "
              };

              expect(result, expectedJsonMap);
            });
  });
}

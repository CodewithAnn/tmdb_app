import 'package:flutter_clean_architechture/features/number_treavia/domain/entities/movie.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel extends Movie with _$MovieModel {
  const factory MovieModel({
    required int id,
    required String title,
    required String poster_path,
    required String overview,
    required String name,
  }) = _MovieModel;

  factory MovieModel.fromJson(Map<String,dynamic> json) => _$MovieModelFromJson(json);
}

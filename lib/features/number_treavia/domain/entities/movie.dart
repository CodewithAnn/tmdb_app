import 'package:equatable/equatable.dart';

class Movie extends Equatable {
  final int id;
  final String title;
  final String poster_path;
  final String overview;
  final String name;
  Movie(
      {required this.id,
      required this.overview,
      required this.poster_path,
      required this.title,
      required this.name});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, poster_path, overview, name, title];
}

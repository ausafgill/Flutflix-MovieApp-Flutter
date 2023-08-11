class MovieModel {
  String backDropPath;
  String title;
  String originalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAvg;
  MovieModel(
      {required this.backDropPath,
      required this.originalTitle,
      required this.overview,
      required this.posterPath,
      required this.releaseDate,
      required this.title,
      required this.voteAvg});

  factory MovieModel.fromJson(Map<String, dynamic> json) {
    return MovieModel(
        backDropPath: json["backdrop_path"],
        title: json["title"],
        originalTitle: json["original_title"],
        overview: json["overview"],
        posterPath: json["poster_path"] ??
            'https://image.tmdb.org/t/p/w500/8Vt6mWEReuy4Of61Lnj5Xj704m8.jpg',
        releaseDate: json["release_date"],
        voteAvg: json["vote_average"].toDouble());
  }
}

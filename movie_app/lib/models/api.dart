import 'dart:convert';

import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:http/http.dart' as http;

class Api {
  static const _trendingUrl =
      'https://api.themoviedb.org/3/trending/movie/day?api_key=593d32476080e0e9fae0da1e9a17ac1b';

  static const _topurl =
      'https://api.themoviedb.org/3/movie/top_rated?api_key=593d32476080e0e9fae0da1e9a17ac1b';
  static const _upcomingurl =
      'https://api.themoviedb.org/3/movie/upcoming?api_key=593d32476080e0e9fae0da1e9a17ac1b';

  Future<List<MovieModel>> getTrendingMoviesTest() async {
    final response = await http.get(Uri.parse(_trendingUrl));
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body)['results'] as List;
      print(decodedData);
      return decodedData.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw Exception('ERROR');
    }
  }

  Future<List<MovieModel>> getTopRatedMovies() async {
    final response = await http.get(Uri.parse(_topurl));
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body)['results'] as List;
      return decodedData.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw Exception('ERRROr');
    }
  }

  Future<List<MovieModel>> getUpcomingMovies() async {
    final response = await http.get(Uri.parse(_upcomingurl));
    if (response.statusCode == 200) {
      final decodedData = jsonDecode(response.body)['results'] as List;
      return decodedData.map((e) => MovieModel.fromJson(e)).toList();
    } else {
      throw Exception('ERROR');
    }
  }
}

import 'package:componentsTemplateFlutter/src/_models/movie_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class MovieService{

  String _apiKey = 'f325826239831f36d9b6e2f22091b409';
  String _url = 'api.themoviedb.org';
  String _language = 'es-ES';
  String _path = '3/movie/now_playing';

  Future<List<Movie>> getNowPlaying() async {
    final url = Uri.https(_url, _path,{
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    });
    final res = await http.get( url );
    print(res.statusCode); //STATUS CODE
    //print(res.headers);
    final resJson = json.decode(res.body); //Get as Map
    Movies moviesObj = Movies.fromJsonList(resJson['results']);
    print(moviesObj.movies.length);
    return moviesObj.movies;
  }

}
import 'dart:async';

import 'package:componentsTemplateFlutter/src/_models/movie_model.dart';
import 'package:componentsTemplateFlutter/src/_services/generic_service.dart';

class MovieService extends GenericService{

  final String _apiKey = 'f325826239831f36d9b6e2f22091b409';
  final String _host = 'api.themoviedb.org';
  final String _language = 'es-ES';
  final String _pathNowPlaying = '3/movie/now_playing';
  final String _pathPopular = '3/movie/popular';

  //STREAM for popular movies list
  final StreamController<List<Movie>> _popularsStreamController = StreamController<List<Movie>>.broadcast();
  //SINK, data inputs
  Function(List<Movie>) get popularsSink => _popularsStreamController.sink.add;
  //STREAM, data output
  Stream<List<Movie>> get popularsStream => _popularsStreamController.stream;
  //ALWAYS close!!!!!!!!!
  void dispose(){
    _popularsStreamController?.close();
  }

  Future<List<Movie>> getPopular(int page) async {
    final resJson = await super.findMany(https: true, host: _host, path: _pathPopular, queryParameters: {
      'api_key': _apiKey,
      'language': _language,
      'page': page.toString()
    });

    List<Movie> response = buildListFromJson(resJson);
    popularsSink(response);

    return response;
  }

  Future<List<Movie>> getNowPlaying() async {
    final resJson = await super.findMany(https: true, host: _host, path: _pathNowPlaying, queryParameters: {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    });
    return buildListFromJson(resJson);
  }

  List<Movie> buildListFromJson(Map<String, dynamic> resJson){
    Movies moviesObj = Movies.fromJsonList(resJson['results']);
    return moviesObj.movies;
  }

}
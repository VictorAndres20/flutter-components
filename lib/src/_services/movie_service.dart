import 'package:componentsTemplateFlutter/src/_models/movie_model.dart';
import 'package:componentsTemplateFlutter/src/_services/generic_service.dart';

class MovieService extends GenericService{

  final String _apiKey = 'f325826239831f36d9b6e2f22091b409';
  final String _host = 'api.themoviedb.org';
  final String _language = 'es-ES';
  final String _pathNowPlaying = '3/movie/now_playing';
  final String _pathPopular = '3/movie/popular';

  Future<List<Movie>> getNowPlaying() async {
    final resJson = await super.findMany(https: true, host: _host, path: _pathNowPlaying, queryParameters: {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    });
    return buildListFromJson(resJson);
  }

  Future<List<Movie>> getPopular() async {
    final resJson = await super.findMany(https: true, host: _host, path: _pathPopular, queryParameters: {
      'api_key': _apiKey,
      'language': _language,
      'page': '1'
    });
    return buildListFromJson(resJson);
  }

  List<Movie> buildListFromJson(Map<String, dynamic> resJson){
    Movies moviesObj = Movies.fromJsonList(resJson['results']);
    print(moviesObj.movies.length);
    return moviesObj.movies;
  }

}
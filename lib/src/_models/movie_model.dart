class Movies{
  List<Movie> movies = new List();

  Movies();

  Movies.fromJsonList(List<dynamic> list){
    if(list == null)return;

    for(var item in list){
      final movie = Movie.fromJsonMap(item);
      this.movies.add(movie);
    }
  }
}

class Movie{

  int voteCount;
  int id;
  bool video;
  double voteAverage;
  String title;
  double popularity;
  String posterPath;
  String originalLanguage;
  String originalTitle;
  List<int> genereIds;
  String backdropPath;
  bool adult;
  String overview;
  String releaseDate;

  Movie({
    this.voteCount,
    this.id,
    this.video,
    this.voteAverage,
    this.title,
    this.popularity,
    this.posterPath,
    this.originalLanguage,
    this.originalTitle,
    this.genereIds,
    this.backdropPath,
    this.adult,
    this.overview,
    this.releaseDate
  });

  Movie.fromJsonMap( Map<String, dynamic> json){

    this.voteCount = json['vote_count'];
    this.id = json['id'];
    this.video = json['video'];
    this.voteAverage = json['vote_average'] /1;
    this.title = json['title'];
    this.popularity = json['popularity'] / 1;
    this.posterPath = json['poster_path'];
    this.originalLanguage = json['original_language'];
    this.originalTitle = json['original_title'];
    this.genereIds = json['genre_ids'].cast<int>();
    this.backdropPath = json['backdrop_path'];
    this.adult = json['adult'];
    this.overview = json['overview'];
    this.releaseDate = json['release_date'];

  }

  String getPosterPath(){
    if(this.posterPath == null){
      return "https://cdn2.iconfinder.com/data/icons/photo-and-video/500/Landscape_moon_mountains_multiple_photo_photograph_pictury_sun-512.png";
    } else {
      return "https://image.tmdb.org/t/p/w500$posterPath";
    }    
  }

}
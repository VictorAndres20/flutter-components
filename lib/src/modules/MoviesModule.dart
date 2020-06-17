import 'package:componentsTemplateFlutter/src/_models/movie_model.dart';
import 'package:componentsTemplateFlutter/src/_services/movie_service.dart';
import 'package:componentsTemplateFlutter/src/containers/AppBars/search_app_bar.dart';
import 'package:componentsTemplateFlutter/src/containers/Swipers/stack_swiper.dart';
import 'package:componentsTemplateFlutter/src/containers/Swipers/swiper_card.dart';
import 'package:flutter/material.dart';

class MoviesModule extends StatefulWidget{

  @override
  _MoviesModuleState createState() => _MoviesModuleState();
  
}

class _MoviesModuleState extends State<MoviesModule>{

  final MovieService movieService = MovieService();

  List<Movie> populars = List();
  int page = 1;

  void initState(){
    super.initState();
    movieService.getPopular(page);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildSearchAppBar(
        title: "Películas disponibles",
        onSearch: (){

        }
      ),
      body: ListView(
        children: <Widget>[
          Container(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[
            FutureBuilder(
              future: movieService.getNowPlaying(), //Method that return Future
              //initialData: CircularProgressIndicator(),
              builder: (BuildContext context, AsyncSnapshot<List> snapshot){
                if(snapshot.hasData) {
                  return buildStackSwiper(context: context, list: snapshot.data);
                } else {
                  return Container(
                    height: 200.0,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              }
            ),
            Container(
              padding: EdgeInsets.only(bottom: 5.0, left: 20.0),
              width: 300,
              child: Text("Top Películas", style: TextStyle(fontSize: 20.0), textAlign: TextAlign.start),
            ),
            StreamBuilder(
              stream: movieService.popularsStream, //STREAM that return List<Movie>
              //initialData: CircularProgressIndicator(),
              builder: (BuildContext context, AsyncSnapshot<List<Movie>> snapshot){
                if(snapshot.hasData) {
                  populars.addAll(snapshot.data);
                  page++;
                  print("LENGTH: ${populars.length}");
                  print("PAGE: $page");
                  return buildSwiperCard(list: snapshot.data, maxScrollEventFunc: (){
                    movieService.getPopular(page);
                    //print("LLAMAR A FUNCIÓN");
                  });
                } else {
                  return Container(
                    height: 100.0,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
              }
            )
          ],
        ),
      ),
        ],
      )
    );
  }
}
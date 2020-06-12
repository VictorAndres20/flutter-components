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

  void initState(){
    super.initState();
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
              future: movieService.getNowPlaying(), //Methos that return Future
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
            FutureBuilder(
              future: movieService.getPopular(), //Methos that return Future
              //initialData: CircularProgressIndicator(),
              builder: (BuildContext context, AsyncSnapshot<List> snapshot){
                if(snapshot.hasData) {
                  return buildSwiperCard(list: snapshot.data);
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
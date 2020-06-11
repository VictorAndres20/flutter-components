import 'package:componentsTemplateFlutter/src/_services/movie_service.dart';
import 'package:componentsTemplateFlutter/src/containers/AppBars/search_app_bar.dart';
import 'package:componentsTemplateFlutter/src/containers/Swipers/stack_swiper.dart';
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
      body: Container(
        child: Column(
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
            )
          ],
        ),
      ),
    );
  }
}
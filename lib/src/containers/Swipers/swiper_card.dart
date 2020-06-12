import 'package:componentsTemplateFlutter/src/_models/movie_model.dart';
import 'package:flutter/material.dart';

Widget buildSwiperCard({@required List<Movie> list}) {

  return Container(
    height: 220,
    child: PageView(
      controller: PageController(initialPage: 1, viewportFraction: 0.3),
      children: buildCards(200,list),
    ),
  );
}

List<Widget> buildCards(double height ,List<Movie> list) {
  return list.map((movie) {
    return Container(
      height: height,
      padding: EdgeInsets.only(right: 10.0),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 7.0),
            alignment: Alignment.bottomLeft,
            height: 50,
            child: Text(movie.title),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(20.0),
            child: FadeInImage(
              placeholder: AssetImage("resources/images/loading.gif"),
              image: NetworkImage(movie.getPosterPath()),
              fit: BoxFit.cover,
            ),
          )
        ],
      )
    );
  }).toList();
}

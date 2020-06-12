import 'package:componentsTemplateFlutter/src/_models/movie_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

final double percentWidthItemSwiper = 0.7;
final double percentHeightItemSwiper = 0.6;

Widget buildStackSwiper({@required BuildContext context, @required List<Movie> list}){
  final screenSize = MediaQuery.of(context).size;

  return Container(
    padding: EdgeInsets.all(20.0),
    height: screenSize.height * percentHeightItemSwiper,
    child: Swiper(
      itemBuilder: (BuildContext context,int index){
        return ClipRRect(
          borderRadius: BorderRadius.circular(20.0),
          child: FadeInImage(
            placeholder: AssetImage("resources/images/loading.gif"), 
            image: NetworkImage(list[index].getPosterPath()),
            fit: BoxFit.cover,
          ),
        );
      },
      itemCount: list.length,
      //pagination: new SwiperPagination(), // This, render Dots pagination under
      //control: new SwiperControl(), // This, render < > controller in right and left sides
      layout: SwiperLayout.STACK,
      itemWidth: screenSize.width * percentWidthItemSwiper,
      itemHeight: screenSize.height * percentHeightItemSwiper,
    ),
  );
}
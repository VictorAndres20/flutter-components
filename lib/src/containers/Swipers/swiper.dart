import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

Widget buildSwiper(){
  return Container(
    width: double.infinity,
    height: 300.0,
    child: Swiper(
      itemBuilder: (BuildContext context,int index){
        return new Image.network(
          "http://via.placeholder.com/350x150",
          fit: BoxFit.fill,
        );
      },
      itemCount: 3,
      //pagination: new SwiperPagination(), // This, render Dots pagination under
      //control: new SwiperControl(), // This, render < > controller in right and left sides
    ),
  );
}
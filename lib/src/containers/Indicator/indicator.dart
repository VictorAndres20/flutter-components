import 'package:flutter/material.dart';

Widget buildIndicator({bool isLoading}){
  if(isLoading){
    return CircularProgressIndicator();
  } else {
    return Container();
  }
}
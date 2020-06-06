import 'package:flutter/material.dart';

class TransparentAppBar extends StatelessWidget{

  final String titleAppBar;

  TransparentAppBar({this.titleAppBar});

  @override
  Widget build( context ){
    return AppBar(
      title: Text(titleAppBar),
      backgroundColor: Color.fromRGBO(52, 52, 52, 0.2)
    );
  }
}
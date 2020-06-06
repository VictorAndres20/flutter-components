import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildCardImageFade(){
  return _buildCard(FadeInImage(
    placeholder: AssetImage('resources/images/loading.gif'), 
    image: NetworkImage('https://www.yourtrainingedge.com/wp-content/uploads/2019/05/background-calm-clouds-747964.jpg'),
    fadeInDuration: Duration(milliseconds: 300),
  ));
}

Widget buildCardImage({String uri}){
  return _buildCard(Image(
    image: AssetImage('resources/images/loading.gif'),
  ));
}

Widget _buildCard(Widget image){
  return Card(
    child: Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          image,
        ],
      ),
    )
  );
}
import 'package:flutter/material.dart';

Widget buildAvatarAppBar({String title}){
  return AppBar(
    backgroundColor: Color.fromRGBO(52, 52, 52, 0.2),
    title: Text(title),
    actions: <Widget>[
      Container(
        margin: EdgeInsets.only(right: 20),
        child: CircleAvatar(
          backgroundColor: Colors.green,
          child: Text("VP"),
        ),
      ),
      Container(
        padding: EdgeInsets.all(10),
        child: CircleAvatar(
          child: Text("VP"),
          backgroundImage: NetworkImage("https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/hbx060116masterclass01-1550601705.jpg"),
        ),
      )
    ],
  );
}
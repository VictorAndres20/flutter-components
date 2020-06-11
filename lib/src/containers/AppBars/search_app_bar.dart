import 'package:flutter/material.dart';

Widget buildSearchAppBar({@required String title, @required Function onSearch}){
  return AppBar(
    centerTitle: false,
    title: Text(title),
    backgroundColor: Colors.redAccent,
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.search), 
        onPressed: (){ onSearch(); }
      )
    ],
  );
}
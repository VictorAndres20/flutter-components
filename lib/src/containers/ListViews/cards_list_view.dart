import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildCardsListView(List<Widget> childern){
  return ListView(
    padding: EdgeInsets.all(10.0),
    children: childern,
  );
}
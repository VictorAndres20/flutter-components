import 'package:flutter/material.dart';

class SimpleListView extends StatelessWidget{
  final List<Widget> items;

  SimpleListView({this.items});

  @override
  Widget build( context ){
    return ListView(
      children: this.buildItems()
    );
  }

  List<Widget> buildItems(){
    return this.items.map(( item ){
      return Column(
        children: <Widget>[
          ListTile(
            title: item,
            trailing: Icon(Icons.arrow_forward_ios), //Rigth icon
            onTap: (){print("Tapped");},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
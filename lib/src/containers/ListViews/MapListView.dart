import 'package:componentsTemplateFlutter/src/_helpers/icon_string_helper.dart';
import 'package:flutter/material.dart';

class MapListView extends StatelessWidget{
  final List<dynamic> items;

  MapListView({this.items});

  @override
  Widget build( context ){
    return ListView(
      children: this.buildItems( context )
    );
  }

  List<Widget> buildItems(BuildContext context){
    return this.items.map(( item ){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item["text"]),
            leading: getIconFromStr(item['icon']), //Left icon,
            trailing: Icon(Icons.arrow_forward_ios), //Rigth icon
            onTap: (){Navigator.pushNamed(context, item['route']);},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
import 'package:componentsTemplateFlutter/src/containers/AppBars/TransparentAppBar.dart';
import 'package:componentsTemplateFlutter/src/containers/ListViews/MapListView.dart';
import 'package:componentsTemplateFlutter/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomeModule extends StatelessWidget{

  final _titleScreen = "HomeScreen";

  @override
  Widget build( context ){
    print(menuProvider.options);
    return Scaffold(
      appBar: TransparentAppBar(titleAppBar: _titleScreen,).build(context),
      body: buildList()
    );
  }

  Widget buildList(){
    return FutureBuilder(
      future: menuProvider.loadOptions(), // function that return the data as Future
      initialData: [], // Initial data
      builder: (context , AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);

        return MapListView(items: snapshot.data);
      },
    );
  }
}
import 'dart:async';

import 'package:componentsTemplateFlutter/src/containers/AppBars/TransparentAppBar.dart';
import 'package:componentsTemplateFlutter/src/containers/Indicator/indicator.dart';
import 'package:componentsTemplateFlutter/src/containers/ListViews/list_view_builder.dart';
import 'package:flutter/material.dart';

class ListViewModule extends StatefulWidget{

  @override
  _ListViewModuleState createState() => _ListViewModuleState();
  
}

class _ListViewModuleState extends State<ListViewModule>{

  final String title = "ListView";
  final int sizeValues = 5;

  List<int> images = [];
  int lastValue = 0;

  bool isLoading = false;

  ScrollController scrollController = new ScrollController();

  @override
  void initState(){
    super.initState();
    images = nextValues();

    scrollController.addListener(() {
      //When scroll is end
      if(scrollController.position.pixels == scrollController.position.maxScrollExtent){
        nextValuesFetch();
        print("End Scroll");
      }
    });
  }

  //When Widget disposed. Exit screen. Go away mobile
  @override
  void dispose(){
    super.dispose();
    scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TransparentAppBar(titleAppBar: title).build(context),
      body: Stack(
        children: <Widget>[
          buildListViewWithRefreshIndicator(
            controller: scrollController,
            items: images,
            onRefreshFunc: () => refreshData()
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: <Widget>[
                  buildIndicator(isLoading: isLoading)
                ],
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.red,
        child: Icon(Icons.play_arrow),
      ),
    );
  }

  List<int> nextValues(){
    List<int> tmpImages = images;
    for(int i = 0; i<sizeValues; i++){
      lastValue++;
      int current = lastValue;
      tmpImages.add(current);
    }
    return tmpImages;
  }

  List<int> newValues(){
    List<int> tmpImages = [];
    for(int i = 0; i<sizeValues; i++){
      lastValue++;
      int current = lastValue;
      tmpImages.add(current);
    }
    return tmpImages;
  }

  Future nextValuesFetch() async {
    isLoading = true;
    setState(() {});
    return new Timer(Duration(seconds: 2), () {
      setState(() {
        isLoading = false;
        images = nextValues();
      });
      scrollController.animateTo(
        scrollController.position.pixels + 100,
        curve: Curves.fastOutSlowIn,
        duration: Duration(milliseconds: 500)
      );
    });
  }

  Future refreshData() async{
    new Timer(Duration(seconds: 3), () {
      setState(() {
        images = newValues();
      });
    });

    return Future.delayed(Duration(seconds: 3));
  }


}
import 'package:componentsTemplateFlutter/src/containers/AppBars/TransparentAppBar.dart';
import 'package:componentsTemplateFlutter/src/containers/Sliders/image_size_slider.dart';
import 'package:componentsTemplateFlutter/src/containers/Sliders/slider.dart';
import 'package:flutter/material.dart';

class SlidersModule extends StatefulWidget{

  @override
  _SlidersModuleState createState() => new _SlidersModuleState();
}

class _SlidersModuleState extends State<SlidersModule>{

  final _title = "Sliders";
  double sliderValue = 3.0;
  double sliderImageValue = 100.0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: TransparentAppBar(titleAppBar: _title,).build(context),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            buildSlider(
              label: "Primer Slider",
              value: sliderValue,
              onChangeFunc: (value) {
                setState(() {
                  sliderValue = value;
                });
              }
            ),
            Divider(),
            buildImageSizeSlider(
              label: "Tamaño de Iron Man",
              value: sliderImageValue,
              onChangeFunc: (value) {
                setState(() {
                  sliderImageValue = value;
                });
              }
            )
          ],
        ),
      ),
    );
  }
}
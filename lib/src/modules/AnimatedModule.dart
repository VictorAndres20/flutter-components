import 'dart:math';

import 'package:componentsTemplateFlutter/src/_helpers/color_random.dart';
import 'package:componentsTemplateFlutter/src/containers/AppBars/avatar_appbar.dart';
import 'package:flutter/material.dart';

class AnimatedModule extends StatefulWidget{

  @override
  _AnimatedModuleState createState() => _AnimatedModuleState();
  
}

class _AnimatedModuleState extends State<AnimatedModule>{

  final String title = "Animated";

  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.pink;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAvatarAppBar(title: title),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          width: _width,
          height: _heigth,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => this._changeShape(),
        backgroundColor: Colors.red,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
  void _changeShape(){
    final random = Random();

    setState(() {
      _width = random.nextInt(200).toDouble();
      _heigth = random.nextInt(200).toDouble();
      _color = getRandomColor();
    });
  }
}
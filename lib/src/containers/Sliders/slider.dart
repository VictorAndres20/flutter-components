import 'package:flutter/material.dart';

Widget buildSlider({String label, double value, Function onChangeFunc}){
  return Slider(
    activeColor: Colors.red,
    label: label,
    min: 0.0,
    max: 10.0,
    value: value, 
    //onChanged : null // Slider blocked
    onChanged: ( value ) {
      onChangeFunc(value);
    }
  );
}
import 'package:flutter/material.dart';

Widget buildImageSizeSlider({String label, double value, Function onChangeFunc}){
  return Container(
    child: Column(
      children: <Widget>[
        Slider(
          activeColor: Colors.blueGrey,
          label: label,
          min: 100.0,
          max: 200.0,
          value: value, 
          onChanged: ( value ) {
            onChangeFunc(value);
          }
        ),
        Image(
          image: NetworkImage("https://www.show.news/__export/1568656839941/sites/debate/img/2019/09/16/iron_crop1568656773199.jpg_423682103.jpg"),
          width: value,
          fit: BoxFit.contain,
        )
      ],
    ),
  );
}
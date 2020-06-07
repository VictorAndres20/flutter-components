import 'dart:math';

import 'package:flutter/material.dart';

final _listColors = <Color>[
  Colors.red,
  Colors.blue,
  Colors.pink,
  Colors.purple
];

Color getRandomColor(){
  return _listColors[Random().nextInt(3)];
}
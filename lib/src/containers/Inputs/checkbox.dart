import 'package:flutter/material.dart';

Widget buildCheckbox({bool value, Function onChangeFunc}){
  return Checkbox(
    value: value, 
    onChanged: (data){
      onChangeFunc(data);
    }
  );
}
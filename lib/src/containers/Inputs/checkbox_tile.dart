import 'package:flutter/material.dart';

Widget buildCheckboxTile({String title, bool value, Function onChangeFunc}){
  return CheckboxListTile(
    title: Text(title),
    value: value, 
    onChanged: (data){
      onChangeFunc(data);
    }
  );
}
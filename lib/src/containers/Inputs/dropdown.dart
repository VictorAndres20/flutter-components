import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildDopdown({List<String> items, String value, Function onChange}){
  return Row(
    children: <Widget>[
      Icon(Icons.account_box),
      DropdownButton(
        value: value,
        items: getMenuItems(items), 
        onChanged: (data){
          onChange(data);
        }
      )
    ],
  );
}

List<DropdownMenuItem<String>> getMenuItems(List<String> items){
  List<DropdownMenuItem<String>> itemsMenu = new List<DropdownMenuItem<String>>();
  items.forEach((element) { 
    itemsMenu.add(new DropdownMenuItem(
        child: Text(element),
        value: element,
      ));
  });
  return itemsMenu;
}
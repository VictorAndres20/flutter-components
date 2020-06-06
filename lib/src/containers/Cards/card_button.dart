import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildCard(){
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.format_shapes),
          title: Text("Ejemplo Card"),
          subtitle: Text("Descripción"),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FlatButton(
              onPressed: (){}, 
              child: Text("Cancel")
            ),
            FlatButton(
              onPressed: (){}, 
              child: Text("Ok")
            )
          ],
        )
      ],
    )
  );
}
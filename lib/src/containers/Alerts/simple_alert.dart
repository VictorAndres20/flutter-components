import 'package:flutter/material.dart';

Widget buildSimpleAlert(BuildContext context, Function okFunc) {
  return AlertDialog(
    title: Text("Mi Titulo"),
    content: Text("Contenido"),
    actions: <Widget>[
      FlatButton(
        onPressed: () => Navigator.of(context).pop(), 
        child: Text("Cancel")
      ),
      FlatButton(
        onPressed: () => okFunc(), 
        child: Text("Ok")
      )
    ],
  );
}

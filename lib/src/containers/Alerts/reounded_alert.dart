import 'package:flutter/material.dart';

Widget buildRoundedAlert(BuildContext context, Function okFunc) {
  return AlertDialog(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20.0))),
    title: Text("Mi Titulo"),
    content: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text("Contenido"),
        FlutterLogo()
      ],
    ),
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

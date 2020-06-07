import 'package:flutter/material.dart';

Widget buildRoundInput({String label,String value,Function onChangeFunc}){
  return TextField(
    //autofocus: true,
    //obscureText: true, //FOR PASSWORD
    textCapitalization: TextCapitalization.sentences,
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      counter: Text("Cantidad: ${ value.length }"),
      hintText: "Digita $label",
      labelText: label,
      helperText: "Description here",
      suffixIcon: Icon(Icons.playlist_add_check),
      icon: Icon(Icons.supervised_user_circle)
    ),
    onChanged: (data) => onChangeFunc(data),
  );
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildDatePicker({BuildContext context,String label,TextEditingController controller, Function onTapFunc}){
  return TextField(
    enableInteractiveSelection: false,
    controller: controller,
    showCursor: false,
    readOnly: true,
    decoration: InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0)
      ),
      labelText: label,
      helperText: "Description here",
      suffixIcon: Icon(Icons.playlist_add_check),
      icon: Icon(Icons.supervised_user_circle)
    ),
    onTap: () {_launchDatePicker(context, onTapFunc);},
  );
}

void _launchDatePicker(BuildContext context, Function onTapFunc) async {
  DateTime picked = await showDatePicker(
    context: context, 
    initialDate: new DateTime.now(), 
    firstDate: new DateTime(2018), 
    lastDate: new DateTime(2025),    
    //Need to implement Flutter Internacionalization
    //Only Setting up an internation­alized app
    //https://flutter.dev/docs/development/accessibility-and-localization/internationalization
    //locale: Locale('es','ES'),
  );

  if(picked != null){
    FocusScope.of(context).requestFocus(new FocusNode());
    onTapFunc(picked.toString());
  }
}
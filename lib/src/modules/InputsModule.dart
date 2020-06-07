import 'package:componentsTemplateFlutter/src/containers/AppBars/avatar_appbar.dart';
import 'package:componentsTemplateFlutter/src/containers/Inputs/round_input.dart';
import 'package:flutter/material.dart';

class InputsModule extends StatefulWidget{

  @override
  _InputsModuleState createState() => _InputsModuleState();
  
}

class _InputsModuleState extends State<InputsModule>{

  final String title = "Inputs";

  String dataUser = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAvatarAppBar(title: title),
      body: Center(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          children: <Widget>[
            buildRoundInput(
              value: dataUser,
              label: "User",
              onChangeFunc: (data) {
                setState(() {
                  dataUser = data;
                });
              }
            ),
            Divider(),
            ListTile(
              title: Text(dataUser),
            )
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => {},
        backgroundColor: Colors.red,
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
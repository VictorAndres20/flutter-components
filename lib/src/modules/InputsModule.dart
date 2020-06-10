import 'package:componentsTemplateFlutter/src/containers/AppBars/avatar_appbar.dart';
import 'package:componentsTemplateFlutter/src/containers/Inputs/checkbox.dart';
import 'package:componentsTemplateFlutter/src/containers/Inputs/checkbox_tile.dart';
import 'package:componentsTemplateFlutter/src/containers/Inputs/date_picker.dart';
import 'package:componentsTemplateFlutter/src/containers/Inputs/dropdown.dart';
import 'package:componentsTemplateFlutter/src/containers/Inputs/round_input.dart';
import 'package:flutter/material.dart';

class InputsModule extends StatefulWidget{

  @override
  _InputsModuleState createState() => _InputsModuleState();
  
}

class _InputsModuleState extends State<InputsModule>{

  final String title = "Inputs";
  final List<String> items = <String>[
    'Opción 1',
    'Opción 2',
    'Opción 3',
    'Opción 4'
  ];

  String dataUser = '';
  String datePicked = '';
  String optionSelected = 'Opción 1';

  bool checkbox = true;
  bool checkboxTile = true;

  TextEditingController inputDateController = new TextEditingController();

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
            buildDatePicker(
              controller: inputDateController,
              context: context,
              label: "Fecha",
              onTapFunc: (picked){
                setState(() {
                  this.datePicked = picked;
                  this.inputDateController.text = this.datePicked;
                });
              }
            ),
            Divider(),
            buildDopdown(
              items: items,
              value: optionSelected,
              onChange: (selected) {
                setState(() {
                  optionSelected = selected;
                });
              }
            ),
            Divider(),
            buildCheckbox(
              value: checkbox,
              onChangeFunc: (data){
                setState(() {
                  checkbox = data;
                });
              }
            ),
            Divider(),
            buildCheckboxTile(
              title: "Bien o no?",
              value: checkboxTile,
              onChangeFunc: (data){
                setState(() {
                  checkboxTile = data;
                });
              }
            ),
            Divider(),
            ListTile(
              title: Text(dataUser),
            ),
            
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
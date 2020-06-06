import 'package:componentsTemplateFlutter/src/containers/AppBars/TransparentAppBar.dart';
import 'package:flutter/material.dart';

class ALertsModule extends StatelessWidget{

  final String title = "Alerts";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TransparentAppBar(titleAppBar: title,).build(context),
      body: Center(child: Text("Alerts")),
    );
  }
}
import 'package:componentsTemplateFlutter/src/containers/AppBars/TransparentAppBar.dart';
import 'package:flutter/material.dart';

class AvatarsModule extends StatelessWidget{

  final String title = "Avatars";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TransparentAppBar(titleAppBar: title,).build(context),
      body: Center(child: Text("Avatars")),
    );
  }
}
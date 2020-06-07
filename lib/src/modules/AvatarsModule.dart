import 'package:componentsTemplateFlutter/src/containers/AppBars/avatar_appbar.dart';
import 'package:flutter/material.dart';

class AvatarsModule extends StatelessWidget{

  final String title = "Avatars";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAvatarAppBar(title: "Avatars"),
      body: Center(child: Text("Avatars")),
    );
  }
}
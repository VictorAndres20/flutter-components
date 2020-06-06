import 'package:componentsTemplateFlutter/src/modules/CardsModule.dart';
import 'package:flutter/material.dart';

import 'package:componentsTemplateFlutter/src/modules/HomeModule.dart';
import 'package:componentsTemplateFlutter/src/modules/AlertsModule.dart';
import 'package:componentsTemplateFlutter/src/modules/AvatarsModule.dart';

// Route '/' is the initial route
Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    "/": (context) => HomeModule(),
    "alert": (context) => ALertsModule(),
    "avatar": (context) => AvatarsModule(),
    "card": (context) => CardsModule(),
  };
}

MaterialPageRoute getNotFoundModule(BuildContext context) {
  return MaterialPageRoute(
      builder: (BuildContext context) => Center(child: Text("Ruta no existe"))
  );
}
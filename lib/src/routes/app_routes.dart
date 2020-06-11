import 'package:componentsTemplateFlutter/src/modules/AnimatedModule.dart';
import 'package:componentsTemplateFlutter/src/modules/CardsModule.dart';
import 'package:componentsTemplateFlutter/src/modules/InputsModule.dart';
import 'package:componentsTemplateFlutter/src/modules/ListViewModule.dart';
import 'package:componentsTemplateFlutter/src/modules/MoviesModule.dart';
import 'package:componentsTemplateFlutter/src/modules/SlidersModule.dart';
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
    "animated": (context) => AnimatedModule(),
    "inputs": (context) => InputsModule(),
    "sliders": (context) => SlidersModule(),
    "listview": (context) => ListViewModule(),
    "moviesapp": (context) => MoviesModule()
  };
}

MaterialPageRoute getNotFoundModule(BuildContext context) {
  return MaterialPageRoute(
      builder: (BuildContext context) => Center(child: Text("Ruta no existe"))
  );
}

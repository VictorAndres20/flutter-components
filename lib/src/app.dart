import 'package:flutter/material.dart';

import 'package:componentsTemplateFlutter/src/routes/app_routes.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components Template App',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: getApplicationRoutes(),
      onGenerateRoute: ( RouteSettings settings ) => getNotFoundModule(context)
    );
  }
}
import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _MenuProvider{

  final String pathFile = "resources/files/";
  final String fileName = "menu.json";
  List<dynamic> options = [];

  Future<List<dynamic>> loadOptions() async{
    String data = await rootBundle.loadString("${pathFile + fileName}");
    Map dataMap = json.decode(data);
    options = dataMap['routes'];
    print(options);
    return options;
  }
}

final menuProvider = new _MenuProvider();
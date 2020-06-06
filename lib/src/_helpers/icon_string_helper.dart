import 'package:flutter/material.dart';

final iconsData = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open' : Icons.folder_open
};

Icon getIconFromStr(String iconKey) => Icon(iconsData[iconKey], color: Colors.blue,);
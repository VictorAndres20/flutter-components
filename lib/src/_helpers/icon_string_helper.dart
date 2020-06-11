import 'package:flutter/material.dart';

final iconsData = <String, IconData>{
  'add_alert': Icons.add_alert,
  'accessibility': Icons.accessibility,
  'folder_open' : Icons.folder_open,
  'add_to_home_screen' : Icons.add_to_home_screen,
  'input': Icons.input,
  'timer_3': Icons.timer_3,
  'list': Icons.list,
  'movie_filter': Icons.movie_filter
};

Icon getIconFromStr(String iconKey) => Icon(iconsData[iconKey], color: Colors.blue,);
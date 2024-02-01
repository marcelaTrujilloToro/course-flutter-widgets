// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

const List<Color> colorList = [
  Colors.lightBlue,
  Colors.teal,
  Colors.green,
  Colors.red,
  Colors.purple,
  Colors.deepPurple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
];

class AppTheme {
  final int selectedColor;

  AppTheme({
    required this.selectedColor,
  }) : assert(selectedColor >= 0 && selectedColor < colorList.length - 1,
            'Colors must be between 0 and ${colorList.length}');
  ThemeData theme() {
    return ThemeData(
        useMaterial3: true,
        colorSchemeSeed: colorList[selectedColor],
        appBarTheme: const AppBarTheme(
            centerTitle: false)); /* forzar o no el centrado de los appBar */

    // brightness: Brightness.dark);
  }
}

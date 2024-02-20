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
  final bool isDarkMode;

  AppTheme({this.selectedColor = 0, this.isDarkMode = true})
      : assert(selectedColor >= 0, 'Selected color must be greater than 0'),
        assert(selectedColor < colorList.length,
            'Colors must be between 0 and ${colorList.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false),
      brightness: isDarkMode ? Brightness.dark : Brightness.light,
    );
    /* forzar o no el centrado de los appBar */
  }

  AppTheme copyWith({
    int? selectedColor,
    bool? isDarkMode,
  }) =>
      AppTheme(
          selectedColor: selectedColor ?? this.selectedColor,
          isDarkMode: isDarkMode ?? this.isDarkMode);
}

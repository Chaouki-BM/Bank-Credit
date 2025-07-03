import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  colorScheme: const ColorScheme.light(
    primary: Color(0xFF0050bb),
    secondary: Color.fromARGB(255, 0, 0, 0),
    surface: Color(0xFFEDF2FA),
    onSurface: Color.fromARGB(255, 99, 98, 98),
    error: Color(0xFFFF5252), // Rouge (couleur d'erreur par défaut)
  ),
);

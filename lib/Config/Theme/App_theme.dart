import 'package:flutter/material.dart';

// Color principal personalizado
const Color _customColor = Color(0xff5c11d4);

// Lista de colores del tema
const List<Color> _colorTheme = [
  _customColor,
  Colors.blue,
  Colors.pink,
  Colors.orange,
  Colors.teal,
  Colors.green,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 2})
      : assert(
          selectedColor >= 0 && selectedColor < _colorTheme.length,
          "selectedColor debe estar entre 0 y ${_colorTheme.length - 1}",
        );

  ThemeData theme() {
    final Color seed = _colorTheme[selectedColor];

    return ThemeData.light().copyWith(
      useMaterial3: true, // Habilitar Material 3
      colorScheme: ColorScheme.fromSeed(
        seedColor: seed,
        brightness: Brightness.light,
      ),
      scaffoldBackgroundColor: Colors.white, // Fondo claro
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
    );
  }
}

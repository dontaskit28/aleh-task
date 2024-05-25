import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get defaultTheme => ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        fontFamily: 'Inter',
      );

  static Color get primaryColor => const Color(0xff664DEF);

  static BoxShadow get boxShadow => BoxShadow(
        color: const Color(0xff000000).withOpacity(0.25),
        spreadRadius: 0,
        blurRadius: 4,
        offset: const Offset(0, 4),
      );
}

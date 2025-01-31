import 'package:flutter/material.dart';

class MyOutlinedButtonTheme {
  MyOutlinedButtonTheme._(); // To avoid creating instances

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0, // Set elevation to 0 for a flat button style
      foregroundColor: Colors.black, // Text and icon color
      side: const BorderSide(color: Colors.blue), // Border color
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 28),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: Colors.white, // Text and icon color
      side: const BorderSide(color: Colors.blueAccent), // Border color
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        fontWeight: FontWeight.w600, // Or FontWeight.w600 as in light theme
      ),
      padding: const EdgeInsets.symmetric(
          vertical: 16, horizontal: 28), // Consistent padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
    ),
  ); // OutlinedButtonThemeData
}

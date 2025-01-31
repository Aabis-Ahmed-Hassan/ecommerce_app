import 'package:ecommerce_app/utility/theme/custom_theme/appbar_theme.dart';
import 'package:ecommerce_app/utility/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:ecommerce_app/utility/theme/custom_theme/checkbox_theme.dart';
import 'package:ecommerce_app/utility/theme/custom_theme/chip_theme.dart';
import 'package:ecommerce_app/utility/theme/custom_theme/elevated_button_theme.dart';
import 'package:ecommerce_app/utility/theme/custom_theme/text_theme.dart';
import 'package:ecommerce_app/utility/theme/custom_theme/textfield_theme.dart';
import 'package:flutter/material.dart';

class MyAppTheme {
  MyAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: MyTextTheme.lightTextTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeData(),
    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
  );

  /// Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true, // Updated to use Material 3 if available
    fontFamily: 'Poppins', // Make sure Poppins font is added to your project
    brightness: Brightness.dark,
    primaryColor: Colors.blue, // Customize primary color
    scaffoldBackgroundColor:
        Colors.black, // Customize scaffold background color

    textTheme: MyTextTheme.darkTextTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: OutlinedButtonThemeData(),
    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
  );
}

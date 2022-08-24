import '../presentation/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightThemeData = ThemeData(
  brightness: Brightness.light,
  primaryColor: primaryColor,
  // scaffoldBackgroundColor: Colors.white,
  colorScheme: ThemeData.light()
      .colorScheme
      .copyWith(secondary: secondaryColorLightTheme),
  textTheme: GoogleFonts.poppinsTextTheme(ThemeData.light().textTheme),
);

final darkThemeData = ThemeData(
    brightness: Brightness.dark,
    primaryColor: primaryColor,
    textTheme: GoogleFonts.poppinsTextTheme(ThemeData.dark().textTheme),
    scaffoldBackgroundColor: bgColorDarkTheme,
    colorScheme: ThemeData.dark()
        .colorScheme
        .copyWith(secondary: secondaryColorDarkTheme));

final elevatedButtonTheme = TextButton.styleFrom(
  padding: const EdgeInsets.symmetric(vertical: defaultPadding * 1.2),
  backgroundColor: primaryColor,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20),
  ),
);

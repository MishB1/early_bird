/*
Template for App Theme

- Define app theme (colors, text styles) here.
- Example:
import 'package:flutter/material.dart';

  final ThemeData appTheme = ThemeData(
    primaryColor: Colors.blue,
    textTheme: TextTheme(
      headline1: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    ),
  );
*/

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  //----------------------------------------------------------------
  // Brand Colors
  static const Color colourPrimary = Color(0xFF41C4FD);
  static const Color colourSecondary = Color(0xFF352A28);
  static const Color colourTertiary = Color(0xFFE3D75B);
  static const Color colourAlternate1 = Color(0xFF8DC6DE);
  static const Color colourAlternate2 = Color(0xFFC5C5C9);

  //----------------------------------------------------------------
  // Utility Colors
  static const Color colourTextPrimary = Color(0xFF272727);
  static const Color colourTextSecondary = Color(0xFF797979);
  static const Color colourPrimaryBg = Color(0xFFFFFFFF);
  static const Color colourSecondaryBg = Color(0xFFF2F2F2);

  //----------------------------------------------------------------
  // Other Colors
  static const Color colourWhite = Colors.white;
  static const Color colourBlack = Colors.black;

  //----------------------------------------------------------------
  // Semantic Colors
  static Color colourSuccess = Color(0xFF04A24C);
  static Color colourError = Color(0xFFFF5963);
}

class TextStyles {
  //----------------------------------------------------------------
  // Font Family
  static final TextStyle h1 = GoogleFonts.lobster();

  static final TextStyle appBarTitle = GoogleFonts.oswald(
    color: Color(0xFFFFFFFF),
    fontSize: 25,
    letterSpacing: 0,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle location = GoogleFonts.anton(
    color: Colors.white70,
    fontSize: 30,
    letterSpacing: 0,
    // fontWeight: FontWeight.bold,
  );

  static final TextStyle time = GoogleFonts.oswald(
    color: Colors.white70,
    fontSize: 80,
    letterSpacing: 0,
    fontWeight: FontWeight.bold,
  );

  static final TextStyle editButtonStyle = GoogleFonts.oswald(
    color: Colors.white70,
    fontSize: 25,
    letterSpacing: 0,
    fontWeight: FontWeight.bold,
  );
}

class ButtonStyles {
  static final ButtonStyle editButton = TextButton.styleFrom(
    foregroundColor: Colors.white70,
    iconColor: Colors.white70,
    textStyle: TextStyles.editButtonStyle, // Set the text style
  );
}



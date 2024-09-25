
import 'package:flutter/material.dart';
import '../../constants.dart';
import 'custom_colors.dart';

class AppThemes {
  // Blue theme
  static final ThemeData blueTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    //scaffoldBackgroundColor: AppStyles.bgColor,//Dashboard bg color
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple).copyWith(surface: Colors.white,),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.blueAccent,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      CustomColors(
        buttonBoxColor: Colors.lightBlue,
        buttonBorderColor: Colors.blueAccent,
        headerFontColor: Colors.white,
        headerBackgroundColor: Colors.blue,
        profilePicBorderColor: Colors.blueGrey,
        drawerBackgroundColor : Colors.blue,
      ),
    ],
  );

  // Green theme
  static final ThemeData greenTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple).copyWith(surface: Colors.white,),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.greenAccent,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      CustomColors(
        buttonBoxColor: Colors.lightGreen,
        buttonBorderColor: Colors.green,
        headerFontColor: Colors.black,
        headerBackgroundColor: Colors.lightGreen,
        profilePicBorderColor: Colors.greenAccent,
        drawerBackgroundColor: Colors.greenAccent,
      ),
    ],
  );

  // Third theme (missing some custom colors)
  static final ThemeData thirdTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.purple,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple).copyWith(surface: Colors.white,),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.purpleAccent,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      CustomColors(
        buttonBoxColor: Colors.purple,
        // Missing buttonBorderColor, will use default
        headerFontColor: Colors.white,
        // Missing headerBackgroundColor, will use default
        profilePicBorderColor: Colors.purpleAccent,
        drawerBackgroundColor: Colors.purpleAccent,
      ),
    ],
  );

  // Fourth theme (missing more custom colors)
  static final ThemeData fourthTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.orange,
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple).copyWith(surface: Colors.white,),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.orangeAccent,
    ),
    extensions: const <ThemeExtension<dynamic>>[
      CustomColors(
        buttonBoxColor: Colors.orange,
        drawerBackgroundColor: Colors.orange,
        // Missing other custom colors, will use default
      ),
    ],
  );

  // Fifth theme (missing all custom colors)
  static final ThemeData fifthTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[900],
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple).copyWith(surface: Colors.black,),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.black87,
    ),
  );
}

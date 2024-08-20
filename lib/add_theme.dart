import 'package:flutter/material.dart';

class AddTheme{

  static const Color lightPrimary = Color (0xffbd8d48);
  static const Color darkPrimary = Color(0xff161e35);
  static const Color black = Color(0xFF242424);
  static const Color white = Color(0xFFFFFFFF);
  static const Color gold = Color(0xFFFACC1D);
  static const Color whiteTranparentLight = Color(0xb8ffffff);
  static const Color whiteTranparentDark = Color(0xc5161e35);


  static ThemeData lightTheme =
  ThemeData(
    hoverColor: whiteTranparentLight,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: lightPrimary,
        selectedItemColor: black,
        unselectedItemColor: white,
        selectedIconTheme:IconThemeData(
            size: 36
        ),
        unselectedIconTheme: IconThemeData(
            size: 30
        )
    ),
    scaffoldBackgroundColor:Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 24,
          color: black,
          fontWeight: FontWeight.bold
      ),

    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor:lightPrimary,
      primary: lightPrimary,
      secondary: lightPrimary.withOpacity(0.57),
      onPrimary: black,
      onSecondary: lightPrimary,


    ),



    useMaterial3: true,
  );
  static ThemeData darkTheme =
  ThemeData(
    hoverColor: whiteTranparentDark,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: darkPrimary,
        selectedItemColor: gold,
        unselectedItemColor: white,
        selectedIconTheme:IconThemeData(
            size: 36
        ),
        unselectedIconTheme: IconThemeData(
            size: 30
        )
    ),
    scaffoldBackgroundColor:Colors.transparent,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontSize: 24,
          color: white,
          fontWeight: FontWeight.bold
      ),

    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor:darkPrimary,
      primary: darkPrimary,
      secondary: darkPrimary.withOpacity(0.57),
      onPrimary: white,
      onSecondary: gold,


    ),



    useMaterial3: true,
  );

//   ThemeData(
//     primaryColor: lightPrimary, appBarTheme: AppBarTheme (
//     backgroundColor:Colors.transparent,
//     titleTextStyle: TextStyle(
//       fontSize: 30,
//       fontWeight: FontWeight. bold,
//       color: black,
//     ),
// // TextStyle
//     centerTitle: true,
//   ), // AppBarTheme
//     scaffoldBackgroundColor: Colors. transparent,
//     bottomNavigationBarTheme: BottomNavigationBarThemeData(
//       type: BottomNavigationBarType.fixed,
//       backgroundColor: lightPrimary,
//       unselectedItemColor: white,
//       selectedItemColor: black,
//     ),
//     textTheme: TextTheme(
//       headlineSmall: TextStyle(
//         fontSize: 25,
//         fontWeight: FontWeight.w400,
//         color: black,
//
//       ),
//     ),
//   );
}


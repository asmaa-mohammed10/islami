import 'package:flutter/material.dart';
import 'package:islamy_app/Quran_detalls/quran_detalls_screen.dart';
import 'package:islamy_app/home/home_sscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Color(0xffbd8d48),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
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
              color: Colors.black,
              fontWeight: FontWeight.bold
          ),

        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor:Color(0xffbd8d48),
          primary: Color(0xffbd8d48),
          secondary: Color(0xffbd8d48).withOpacity(0.57),
          onPrimary: Colors.white,
          onSecondary: Colors.black
        ),



        useMaterial3: true,
      ),
        initialRoute: Home_screen.routeName,
        routes: {
          Home_screen.routeName:(_)=>Home_screen(),
          Quran_detalls_screen.routeName:(_)=>Quran_detalls_screen(),

        },
    );
  }
}

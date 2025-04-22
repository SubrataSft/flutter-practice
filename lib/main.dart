import 'package:flutter/material.dart';

import 'home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      home: HomeScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.red,
          foregroundColor: Colors.white
        ),
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue)
          ),
          errorBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue)
          ),
        ),
       elevatedButtonTheme: ElevatedButtonThemeData(

       )
      ),
    );
  }
}



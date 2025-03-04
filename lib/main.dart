import 'package:flutter/material.dart';
import 'package:flutter_practice/splash.dart';

import 'home_screen.dart';

void main(){
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Splash(),
    );
  }
}

/*class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        leading: Icon(Icons.home),
        actions: [
          Icon(Icons.add),
        ],
      ),
      body: Center(
        child: Text(counter.toString(), style: TextStyle(
            fontSize: 40
        ),),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counter++;
        print(counter);
      }, child: Icon(Icons.add),),
    );
  }
}*/



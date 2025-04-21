import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("HomeScreen")),
      body: Column(
        children: [
          // Expanded(
          //   flex: 3,
          //   child: Container(height: 100, width: 100, color: Colors.green),
          // ),
          // Flexible(
          //   flex: 3,
          //   fit: FlexFit.tight,
          //   child: Container(height: 100, width: 100, color: Colors.red),
          // ),
          // Flexible(
          //   fit: FlexFit.tight,
          //   child: Container(height: 100, width: 100, color: Colors.yellow),
          // ),
          /* AspectRatio(aspectRatio: 16/16,child: Container(color: Colors.red,),) */
       SizedBox(
         height: 200,
         width: 100,
         child: FractionallySizedBox(
           heightFactor: 1,
           widthFactor: 3,
           child: Container(
             color: Colors.black,
           ),
         ),
       )
        ],
      ),
    );
  }
}

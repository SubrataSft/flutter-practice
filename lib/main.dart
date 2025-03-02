import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Hello world", home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Text(
        //
        //   textAlign: TextAlign.center,
        //   "Hello world, We are starting application in flutter",
        //   maxLines: 1,
        //   style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600,
        //   backgroundColor: Colors.red,
        //   color: Colors.white,
        //   overflow: TextOverflow.ellipsis
        //   ),
        //
        // ),
        // child: Icon(Icons.android,size: 100,color: Colors.red,),
        // child: Image.network("https://static.vecteezy.com/system/resources/previews/047/205/912/non_2x/asian-woman-is-taking-a-picture-with-a-camera-photo.jpg"),
        child: Image.asset("images/cate.jpg",width: 300,height: 300,fit:BoxFit.scaleDown,),
      ),
    );
  }
}

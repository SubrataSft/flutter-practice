/*import 'package:flutter/cupertino.dart';

void main(){
  runApp(IOSStyle());
}

class IOSStyle extends StatelessWidget {
  const IOSStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text("Hello Ios Phone"),
          trailing: CupertinoButton.filled(child: Icon(CupertinoIcons.add), onPressed: (){}),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoActivityIndicator(
                    radius: 24,
                  ),
                  CupertinoSwitch(value: false, onChanged: (value){})
                ],
              ),
        ));
  }
}*/

import 'package:first_apps/splash.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

void main() {
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


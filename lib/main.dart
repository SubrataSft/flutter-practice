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

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      theme: ThemeData(
        brightness: Brightness.light,
        elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyles.elevatedstyle),
     textButtonTheme: TextButtonThemeData(
       style: ButtonStyles.textStyle
     ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18)
          ),
          errorBorder: OutlineInputBorder(
         borderSide: BorderSide(color: Colors.red)
          )

        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.green,
          elevation: 3,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 24
          )
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      themeMode: ThemeMode.light,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {},
            child: Text("Press"),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            onPressed: () {},
            child: Text("Press"),
          ),
          ElevatedButton(

            onPressed: () {},
            child: Text("Press"),
          ),
          TextButton(onPressed: () {}, child: Text("Press")),
          TextField(),
        ],
      ),
    );
  }
}

class ButtonStyles {
  static ButtonStyle elevatedstyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.green,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
      side: BorderSide(width: 2),
    ),
  );
  static ButtonStyle textStyle = TextButton.styleFrom(
    textStyle: TextStyle(
      fontSize: 24
    )
  );
}

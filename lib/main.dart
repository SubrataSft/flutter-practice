/* import 'package:flutter/cupertino.dart';

void main(){
  runApp(IOSStyle());
}

class IOSStyle extends StatelessWidget {
  const IOSStyle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
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
          middle: const Text("Hello"),
          trailing: CupertinoButton(
              onPressed: (){},
            child: const Icon(CupertinoIcons.cube)),
        ),
        child: Center(
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CupertinoActivityIndicator(
                    radius: 24,
                  ),

                ],
              ),
        ));
  }
}
*/

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(),
    theme: ThemeData(
      brightness: Brightness.light,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyles.style
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyles.textStyle
      ),
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(23)
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
          fontSize: 23
        )
      )
    ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            )
        ),

      ),
      themeMode: ThemeMode.light ,
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home ")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text("Button"),
            ), ElevatedButton(
              onPressed: () {},
              child: Text("Button"),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green
              ),
              onPressed: () {},
              child: Text("Button"),
            ),
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.orange,
                backgroundColor: Colors.red
              ),
                onPressed: () {}, child: Text("Button")),
            TextField(),
          ],
        ),
      ),
    );
  }
}

class ButtonStyles {
  static ButtonStyle style = ElevatedButton.styleFrom(
    backgroundColor: Colors.pink,
    foregroundColor: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8),
    ),
  );
  static ButtonStyle textStyle = TextButton.styleFrom(
    textStyle: TextStyle(
      fontSize: 23
    ),
    padding: EdgeInsets.symmetric(horizontal: 23,vertical: 12)
  );
}
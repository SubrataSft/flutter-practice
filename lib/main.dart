import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hello world", home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home screen", style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.home_filled, color: Colors.white),
        actions: [IconButton(onPressed: () {
        //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Money has been transfer")));

          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text("Send money"),
              content: Text("Are you sure that send money"),
              actions: [

              ],
            );
          });
        }, icon: Icon(Icons.add))],
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("How"),
            Text("We are Bangladeshi"),
            Text("you"),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text("He is fate "),
                Text("boy"),
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.date_range),
                        Text("We are proud for you"),
                      ],
                    ),

                    Text("Subrata"),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

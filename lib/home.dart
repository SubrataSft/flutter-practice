import 'package:flutter/material.dart';
import 'package:flutter_practice/profile.dart';
import 'package:flutter_practice/setting.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Setting();
                    },
                  ),
                );
              },
              child: Text("Go to Setting"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Profile(userName: "Subrata",)),
                );
              },
              child: Text("Go to Profile"),
            ),
          ],
        ),
      ),
    );
  }
}

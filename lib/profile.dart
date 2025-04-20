import 'package:first_apps/settings.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key, required this.userName});

  final String userName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          title: Text("Profile"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(userName),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("Back to home")),
              ElevatedButton(onPressed: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Settings()));
              }, child: Text("Go to setting")),
            ],
          ),
        )
    );
  }
}

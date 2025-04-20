import 'package:first_apps/profile.dart';
import 'package:first_apps/settings.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        body:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
              }, child: Text("Go to setting")),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile(userName: 'Subrata',)));
              }, child: Text("Go to profile")),
            ],
          ),
        )
    );
  }
}

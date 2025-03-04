import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("initState");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
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
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {
            counter--;
            print(counter);
            setState(() {

            });
          },
            child: Icon(Icons.add),),
          SizedBox(width: 18,),
          FloatingActionButton(onPressed: () {
            counter++;
            print(counter);
            setState(() {

            });
          }, child: Icon(Icons.add),),
        ],
      ),
    );
  }


  @override
  void deactivate() {
    print("deactivate");
    super.deactivate();
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }
}

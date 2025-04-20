import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget{
  @override
  State<StatefulWidget>createState()=> _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen>{

  int counter = 0;

  @override
  void initState() {
    print("initState");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen"),
        actions: [
          Icon(Icons.add)
        ],),
      body: Center(
        child: Text(counter.toString(),style: TextStyle(
            fontSize: 48
        ),),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: (){
            counter --;
            print(counter);
            setState(() {});
          },child: Icon(Icons.remove),),
          SizedBox(width: 16,),
          FloatingActionButton(onPressed: (){
            counter ++;
            print(counter);
            setState(() {});
          },child: Icon(Icons.add),),
        ],
      ),
    );
  }
  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }
}

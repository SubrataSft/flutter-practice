
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
    );
  }
}
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    
    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).displayFeatures);
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).gestureSettings);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home"),
      ),
      /*body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 8,
          children: [
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
            Text(MediaQuery.orientationOf(context).toString()),
          ],
        ),
      ),*/
     /* body: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
        if(constraints.maxWidth< 600){
          return Center(child: Text("Mobile"));
        }else if(constraints.maxWidth< 800){
          return Center(child: Text("Laptop"));
        }else if(constraints.maxWidth< 1200){
          return Center(child: Text("Desktop"));
        }

        return Center(child: Text("Version 2"));
      },),*/

      body: OrientationBuilder(builder: ( context, orientation) {
        if(rientation == Orientation.landscape){
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.green,
          );
        }else{
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.black,
          );
        }


      },),
    );
  }
}



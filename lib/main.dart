import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home(), theme: ThemeData());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    print(MediaQuery.of(context).size);
    print(MediaQuery.of(context).size.height);
    print(MediaQuery.of(context).size.width);
    print(MediaQuery.of(context).orientation);
    print(MediaQuery.of(context).displayFeatures);

    print(MediaQuery.displayFeaturesOf(context));
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Home")),
      /* body: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          crossAxisAlignment: WrapCrossAlignment.start,
          spacing: 5,
          children: [
            Text(MediaQuery.orientationOf(context).toString()),
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
      /* body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if(constraints.maxHeight < 400){
            return Center(child: Text("mobile"));
          }else if(constraints.maxHeight < 600){
            return Center(child: Text("Tablet"));
          }else if(constraints.maxHeight < 600){
            return Center(child: Text("Laptop"));
          }
          return Center(child: Text("Desktop"));
        },
      ),*/
      body: OrientationBuilder(builder: (context,orientation){
        if(orientation == Orientation.landscape){
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.red,
          );
        }else{
          return Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.pink,
          );
        }
      }),
    );
  }
}

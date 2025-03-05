import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';


void main() {
  runApp( DevicePreview(
    enabled: true,
    builder: (context) => MyApp(), // Wrap your app
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        useInheritedMediaQuery: true,
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: Home(), theme: ThemeData());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Home")),
      body: Column(
        children: [
          // Flexible(
          //   flex: 1,
          //   fit: FlexFit.tight,
          //   child: Container(width: 100, color: Colors.red),
          // ),
          // Expanded(
          //     flex: 2,
          //     child: Container(width: 100, color: Colors.yellow)),
          // Expanded(
          //     flex: 1,
          //     child: Container(width: 100, height: 100, color: Colors.green)),
          // SizedBox(
          //   width: MediaQuery.sizeOf(context).width,
          //   height: 232,
          //   child: FractionallySizedBox(
          //     widthFactor: .9,
          //     heightFactor: .4,
          //     child: Container(
          //       color: Colors.red,
          //     ),
          //   ),
          // )
          AspectRatio(aspectRatio: 13/12,child: Container(color: Colors.red,),)
        ],
      ),
    );
  }
}

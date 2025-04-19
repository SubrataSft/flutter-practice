// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(title: " Hello world", home: Home());
//   }
// }
//
// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.green,
//         title: Text("Flutter app"),
//         leading: Icon(Icons.home),
//         actions: [
//           IconButton(
//             onPressed: () {
//               // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your send money is expire ")));
//               showDialog(
//                 context: context,
//                 builder: (context) {
//                   return AlertDialog(
//                     title: Text('Bkash'),
//                     content: Text("Are your sure that it's right"),
//                   );
//                 },
//               );
//             },
//             icon: Icon(Icons.add),
//           ),
//         ],
//       ),
//       body: Center(
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             /* ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.white,
//                 backgroundColor: Colors.black,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   side: BorderSide(width: 2, color: Colors.green),
//                 ),
//                 textStyle: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
//               ),
//               onPressed: () {
//                 print("I am learner");
//               },
//               child: Text("Press here"),
//             ),
//             TextButton(
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.green,
//                 textStyle: TextStyle(fontSize: 13),
//               ),
//               onPressed: () {},
//               child: Text("Text Button"),
//             ),
//             IconButton(
//               onPressed: () {
//                 print("Icon button");
//               },
//               icon: Icon(Icons.add_circle, color: Colors.green),
//             ),
//             GestureDetector(
//               onTap: () {
//                 print("Gesture detector");
//               },
//               onDoubleTap: () {
//                 print("ON Double tap");
//               },
//               child: Column(
//                 children: [
//                   Text("lsjdkjs"),
//                   Icon(Icons.add_alarm_rounded),
//                   Row(children: [Text("ON Tap detected")]),
//                 ],
//               ),
//             ),
//             InkWell(
//               splashColor: Colors.green,
//               onTap: () {
//                 print("Gesture detector");
//               },
//               onDoubleTap: () {
//                 print("ON Double tap");
//               },
//               child: Column(
//                 children: [
//                   Text("lsjdkjs"),
//                   Icon(Icons.add_alarm_rounded),
//                   Row(children: [Text("ON Tap detected")]),
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextFormField(
//                 maxLength: 10,
//                 style: TextStyle(fontSize: 28, color: Colors.orange),
//                 decoration: InputDecoration(
//                   hintText: "Enter your enamil",
//                   hintStyle: TextStyle(fontSize: 16, color: Colors.grey),
//                   label: Text("Email"),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(28),
//                     borderSide: BorderSide(color: Colors.black),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(width: 2, color: Colors.red),
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(4),
//                     borderSide: BorderSide(
//                       width: 8,
//                       color: Colors.lightBlueAccent,
//                     ),
//                   ),
//                   fillColor: Colors.yellow,
//
//                   prefixIcon: Icon(Icons.add),
//                   suffixIcon: Icon(Icons.remove_red_eye),
//                   suffixIconColor: Colors.red,
//                 ),
//               ),
//             ),*/
//             /* Container(
//               width: 128,
//               height: 128,
//               decoration: BoxDecoration(
//                 color: Colors.green,
//                 borderRadius: BorderRadius.circular(23),
//                 border: Border(
//                   top: BorderSide(color: Colors.red, width: 2),
//                   bottom: BorderSide(color: Colors.red, width: 2),
//                   left: BorderSide(color: Colors.red, width: 2),
//                   right: BorderSide(color: Colors.red, width: 2),
//                 ),
//                 image: DecorationImage(image: AssetImage("images/image.jpeg",),fit: BoxFit.cover)
//               ),
//               alignment: Alignment.center,
//               child: Text("I love all",style: TextStyle(
//                 color: Colors.white
//               ),),
//             ),*/
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 foregroundColor: Colors.black,
//                 backgroundColor: Colors.red,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                   side: BorderSide(color: Colors.black, width: 2),
//                 ),
//                 textStyle: TextStyle(fontSize: 18),
//               ),
//
//               onPressed: () {
//                 print("Elevated Button");
//               },
//               child: Text("On pressed"),
//             ),
//             TextButton(
//                 style: TextButton.styleFrom(
//                   foregroundColor: Colors.green,
//                   textStyle: TextStyle(
//                     color: Colors.black,fontSize: 24
//                   )
//                 ),
//                 onPressed: (){
//                   print("Text Button");
//                 }, child: Text("Text Button")),
//             IconButton(onPressed: (){
//               print("I am icon Button");
//             },
//                 icon: Icon(Icons.add)),
//             GestureDetector(
//               onTap: (){
//                 print("on tap action");
//               },
//               onDoubleTap: (){
//                 print('double Tap');
//               },
//               child: Column(
//                 children: [
//                   Text("Hi guyes"),
//                   Icon(Icons.add_alarm_rounded),
//                   Row(
//                     children: [
//                       Text("Hello Craft mama")
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             InkWell(
//               splashColor: Colors.green,
//
//               borderRadius: BorderRadius.circular(100),
//               onTap: (){
//                 print("on tap action");
//               },
//               onDoubleTap: (){
//                 print('double Tap');
//               },
//               child: Column(
//                 children: [
//                   Text("Hi guyes"),
//                   Icon(Icons.add_alarm_rounded),
//                   Row(
//                     children: [
//                       Text("Hello Craft mama")
//                     ],
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: TextField(
//                 style: TextStyle(
//                   color: Colors.grey
//
//                 ),
//                 decoration: InputDecoration(
//                   hintText:" Enter your Email",
//                   label: Text("Email"),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(16),
//                     borderSide: BorderSide(width: 2),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(2),
//                     borderSide: BorderSide(width: 2,color: Colors.green),
//                   ),
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(18),
//                     borderSide: BorderSide(width: 12),
//                   ),
//                   prefixIcon: Icon(Icons.add),
//                   suffixIcon:Icon(Icons.remove_red_eye),
//                 ),
//
//               ),
//             ),
//             Container(
//               width: 128,
//               height: 126,
//
//               decoration: BoxDecoration(
//                 color: Colors.black,
//                 borderRadius: BorderRadius.circular(24),
//                 // border: Border(
//                 //   top: BorderSide(color: Colors.white,width: 23),
//                 //   bottom: BorderSide(color: Colors.white,width: 23),
//                 //   left: BorderSide(color: Colors.white,width: 23),
//                 //   right: BorderSide(color: Colors.white,width: 23),
//                 // ),
//                 image: DecorationImage(image: AssetImage("images/image.jpeg"),fit: BoxFit.cover),
//                 boxShadow: [
//                   BoxShadow(
//                     offset: const Offset(
//                       5.0,
//                       5.0,
//                     ),
//                     blurRadius: 10.0,
//                     spreadRadius: 2.0,
//                   ),
//                 ]
//
//               ),
//
//               alignment: Alignment.center,
//               child: Text("Hi mama"),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Home Screen", home: Home());
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> studentList = [
    "Subrata",
    "Karima",
    "Raju",
    "Niloy",
    "Subrata",
    "Karima",
    "Raju",
    "Niloy",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter App"),
        leading: Icon(Icons.home),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Bkash"),
                    content: Text("Are you sure that send money transfer "),
                  );
                },
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //       Text("Hello Subrata"),
      //     ],
      //   ),
      // ),
      /*body:ListView(
        children: [
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
          Text("Hello mr Subrata"),
        ],
      )*/
      // body: ListView.builder(
      //     itemCount: 100,
      //     itemBuilder: (context, index){
      //       return Text("${index + 1}" ,style: TextStyle(
      //         fontSize: 40
      //       ),);
      //     }),
      // body: ListView.builder(
      //     itemCount: studentList.length,
      //     itemBuilder: (context, index){
      //   return Column(
      //     children: [
      //       Text(studentList[index],style: TextStyle(
      //         fontSize: 34
      //       ),),
      //       Divider()
      //     ],
      //   );
      // }),
      /*body: ListView.separated(
          itemCount: studentList.length,
          itemBuilder: (context, index){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(studentList[index],style: TextStyle(
              fontSize: 24,
              color: Colors.green
            ),),
            Text(studentList[index],style: TextStyle(
              fontSize: 24,
              color: Colors.green
            ),),
          ],
        );
      }, separatorBuilder: ( context, index) {
            return Divider(
              height: 12,
              thickness: 12,
              endIndent: 12,
              indent: 16,
            );
      },),*/
      /*body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      children: [
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        Text("1"),
        ],),*/
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              shrinkWrap: true,
            primary: false,
            itemCount: studentList.length,
            itemBuilder: (context, index){
           return Column(
            children: [
               Text(studentList[index],style: TextStyle(
                 fontSize: 34
               ),),
               Divider()
            ],
           );
         }),
            GridView.builder(
              shrinkWrap: true,
              primary: false,
              itemCount: 100,

              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 3,
                childAspectRatio: 3

              ),
              itemBuilder: (context, index) {
                return Column(
                  children: [Text("Roll - ${index}"),],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

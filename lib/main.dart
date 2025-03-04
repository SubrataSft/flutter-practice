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
      title: "Hello world",
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  List<String> StudentList = ["Rahim", "Karim", "Raju", "Subrata", "Shuvo"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Home screen", style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.home_filled, color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {
              //  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Money has been transfer")));

              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Send money"),
                    content: Text("Are you sure that send money"),
                    actions: [],
                  );
                },
              );
            },
            icon: Icon(Icons.add),
          ),
        ],
      ),
      // backgroundColor: Colors.white,
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     mainAxisSize: MainAxisSize.min,
      //     children: [
      //       // // ElevatedButton(
      //       // //   style: ElevatedButton.styleFrom(
      //       // //     backgroundColor: Colors.green,
      //       // //     foregroundColor: Colors.white,
      //       // //     shape: RoundedRectangleBorder(
      //       // //       borderRadius: BorderRadius.circular(8),
      //       // //       side: BorderSide(width: 2, color: Colors.white),
      //       // //     ),
      //       // //     textStyle: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
      //       // //     padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      //       // //   ),
      //       // //   onPressed: () {
      //       // //     print("Pressed Buttom");
      //       // //   },
      //       // //   child: Text("Press"),
      //       // // ),
      //       // // TextButton(
      //       // //   style: TextButton.styleFrom(
      //       // //     foregroundColor: Colors.white,
      //       // //     textStyle: TextStyle(fontSize: 18),
      //       // //   ),
      //       // //   onPressed: () {},
      //       // //   child: Text("TextButton"),
      //       // // ),
      //       // // IconButton(
      //       // //   onPressed: () {
      //       // //     print("Add Button");
      //       // //   },
      //       // //   icon: Icon(Icons.add_circle, color: Colors.amber),
      //       // // ),
      //       // // GestureDetector(
      //       // //   onTap: (){
      //       // //     print("On tap detected");
      //       // //   },
      //       // //   onDoubleTap: (){
      //       // //     print("Double tap detected");
      //       // //   },
      //       // //   child: Column(
      //       // //     children: [
      //       // //       Text("sfdf"),
      //       // //       Icon(Icons.add),
      //       // //       Row(
      //       // //         children: [
      //       // //           Text("How old are you"),
      //       // //         ],
      //       // //       )
      //       // //     ],
      //       // //   ),
      //       // // ),
      //       // // InkWell(
      //       // //   splashColor: Colors.amber,
      //       // //   radius: 23,
      //       // //   borderRadius: BorderRadius.circular(23),
      //       // //   onTap: (){
      //       // //     print("On tap detected");
      //       // //   },
      //       // //   onDoubleTap: (){
      //       // //     print("Double tap detected");
      //       // //   },
      //       // //   child: Column(
      //       // //     children: [
      //       // //       Text("sfdf"),
      //       // //       Icon(Icons.add),
      //       // //       Row(
      //       // //         children: [
      //       // //           Text("How old are you"),
      //       // //         ],
      //       // //       )
      //       // //     ],
      //       // //   ),
      //       // // ),
      //       // // Padding(
      //       // //   padding: EdgeInsets.all(16),
      //       // //   child: TextField(
      //       // //     style: TextStyle(
      //       // //       fontSize: 18,
      //       // //     ),
      //       // //     decoration:InputDecoration(
      //       // //       hintText: "Enter your email",
      //       // //       hintStyle: TextStyle(
      //       // //         fontSize: 18,
      //       // //         fontWeight: FontWeight.w600,
      //       // //
      //       // //       ),
      //       // //
      //       // //       label: Text("Email"),
      //       // //       border: OutlineInputBorder(
      //       // //         borderRadius: BorderRadius.circular(8),
      //       // //         borderSide: BorderSide(width: 24,color: Colors.green)
      //       // //       ),
      //       // //       focusedBorder:  OutlineInputBorder(
      //       // //         borderRadius: BorderRadius.circular(8),
      //       // //         borderSide: BorderSide(width: 4,color: Colors.white)
      //       // //       ),
      //       // //       enabledBorder:  OutlineInputBorder(
      //       // //         borderRadius: BorderRadius.circular(8),
      //       // //         borderSide: BorderSide(width: 4,color: Colors.orange)
      //       // //       ),
      //       // //       suffixIcon: Icon(Icons.remove_red_eye),
      //       // //       prefixIcon: Icon(Icons.add)
      //       // //     ),
      //       // //
      //       // //   ),
      //       // // ),
      //       // Container(
      //       //   width: 140,
      //       //   height: 130,
      //       //   decoration: BoxDecoration(
      //       //     color: Colors.green,
      //       //     borderRadius: BorderRadius.circular(16),
      //       //   border: Border.all(color: Colors.black,width: 8),
      //       //     image: DecorationImage(image: AssetImage("images/cate.jpg"),
      //       //     fit: BoxFit.cover,
      //       //     ),
      //       //     boxShadow: [
      //       //       BoxShadow(
      //       //         color: Colors.pink,
      //       //         spreadRadius: 5,
      //       //           blurRadius: 15,
      //       //         offset: Offset(0,7),
      //       //       )
      //       //     ]
      //       //   ),
      //       //   alignment: Alignment.center,
      //       //   child: Text("Hello",style: TextStyle(
      //       //     color: Colors.white,
      //       //     fontWeight: FontWeight.bold
      //       //   ),),
      //       // )
      //     ],
      //   ),
      // ),
      // body: SingleChildScrollView(
      //   child: Column(
      //     children: [
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //       Text("fsjhdfjhsd"),
      //
      //     ],
      //   ),
      // ),
      // body: ListView(
      //   scrollDirection: Axis.vertical,
      //   children: [
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //     Text("sdfsdfd"),
      //   ],
      // ),
      // body: ListView.builder(
      //     itemCount: 100,
      //     itemBuilder: (context, index){
      //       return Text("$index",style: TextStyle(
      //         fontSize: 60
      //       ),);
      //     }),
      // body: ListView.builder(
      //     itemCount: StudentList.length,
      //     itemBuilder: (context,index){
      //   return Padding(
      //     padding: const EdgeInsets.all(16),
      //     child: Column(
      //       children: [
      //         Text(StudentList[index]),
      //         Divider(),
      //       ],
      //     ),
      //   );
      // }),
      // body: ListView.separated(
      //   itemCount: StudentList.length,
      //   itemBuilder: (context, index) {
      //     return
      //         Column(
      //           children: [
      //             Text(StudentList[index], style: TextStyle(fontSize: 18)),
      //           ],
      //         );
      //   },
      //   separatorBuilder: (context,index){
      //     return Divider(
      //       color: Colors.pink,
      //       indent: 10,
      //       endIndent: 8,
      //       thickness: 2,
      //     );
      //   },
      // ),
      // body: GridView(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount:4),
      // children: [
      //   Text("1"),
      //   Text("2"),
      //   Text("3"),
      //   Text("4"),
      //   Text("5"),
      //   Text("6"),
      //   Text("7"),
      //   Text("8"),
      //   Text("9"),
      //   Text("10"),
      // ],),
      body: SingleChildScrollView(
        child: Column(
          children: [
        ListView.builder(
          shrinkWrap: true,
            itemCount: StudentList.length,
            itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(StudentList[index]),
                Divider(),
              ],
            ),
          );
        }),
            GridView.builder(
              shrinkWrap: true,
              itemCount: 100,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,),
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Text("Roll - ${index}"),
                    // Text(StudentList[index])
                  ],
                );
              },),
          ],
        ),
      ),
    );
  }
}

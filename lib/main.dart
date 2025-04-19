import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: " Hello world", home: Home());
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.green,
          title: Text("Flutter app"),
      leading: Icon(Icons.home),
      actions: [
        IconButton(onPressed: (){
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Your send money is expire ")));
        showDialog(context: context, builder: (context){
          return AlertDialog(
            title: Text('Bkash'),
            content: Text("Are your sure that it's right"),
          );
        });
        }, icon: Icon(Icons.add)),

      ],),
      body: Center(
        // child: Text(
        //   "Hello friend djkhf f  jdfhjdhfjdshfjhf f  djfjkf jkfj kjsdjfksdjksdjfkjksdjfkdjfkdfjskdfjk",
        //   maxLines: 3,
        //   textAlign: TextAlign.center,
        //   style: TextStyle(fontWeight: FontWeight.w600, fontSize: 34),
        // ),
        // child: Icon(Icons.android,size: 56,color: Colors.red,),
      // child: Image.network("https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
      // child: Image.asset("images/image.jpeg",height: 300,width: 300,fit: BoxFit.fill,),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Hi"),
          Text("Hi"),
          Text("Hi"),
          Text("Hi ,I love you"),
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Hi"),
              Text("Hi"),
              Column(
                children: [
                  Column(
                    children: [
                      Icon(Icons.date_range),
                      Text("Date:"),
                    ],
                  ),
                  Text("1-2-122"),
                ],
              )

            ],
          )

        ],
      ),
      ),
    );
  }
}

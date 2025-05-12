import 'package:first_apps/ui/screens/update_profile_screen.dart';
import 'package:flutter/material.dart';

import '../utility/app_colors.dart';
import 'network_cached_image.dart';

AppBar profileAppBar(context,[bool formUpdateProfile = false]) {
  return AppBar(
    backgroundColor: AppColors.themColor,
    leading: GestureDetector(
      onTap: (){
        if(formUpdateProfile){
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfileScreen()));;
      },
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: CircleAvatar(child: NetworkCachedImage(url: "")),
      ),
    ),
    title: GestureDetector(
      onTap: (){
        if(formUpdateProfile){
          return;
        }
        Navigator.push(context, MaterialPageRoute(builder: (context)=>UpdateProfileScreen()));;
      },
      child: const Column(
        children: [
          Text(
            "dummy name",
            style: TextStyle(fontSize: 16, color: Colors.white),
          ),
          Text(
            "email@gmail.com",
            style: TextStyle(fontSize: 12, color: Colors.white),
          ),
        ],

      ),
    ),
    actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.logout))],
  );
}

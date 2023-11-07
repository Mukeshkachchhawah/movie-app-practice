import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Profile_ListTile extends StatelessWidget {
  String textValue;
  VoidCallback onTap;
  Icon icons;
   Profile_ListTile({required this.textValue, required this.onTap, required this.icons});

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      onTap: onTap,
            leading: icons, iconColor: Colors.white,
            // CircleAvatar(
            //   backgroundColor: Colors.yellow,
            // //  backgroundImage: NetworkImage("url"),
            // ),
            title: Text("$textValue", style: TextStyle(color: Colors.white),),
       
          );
  }
}
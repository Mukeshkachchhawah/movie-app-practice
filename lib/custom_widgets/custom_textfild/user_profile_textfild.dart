import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class User_Profile_TextFild extends StatelessWidget {
  String textValue;
  VoidCallback onTap;
  Icon suficons;
  Icon peficons;
   User_Profile_TextFild({required this.textValue, required this.onTap, required this.suficons, required this.peficons});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
            fillColor: Color.fromARGB(133, 35, 35, 36),
            filled: true,
            hintText: "$textValue",
            hintStyle: TextStyle(color: Colors.white),
            prefixIcon: peficons , prefixIconColor: Colors.white, 
            suffixIcon: IconButton(onPressed: onTap, icon: suficons, color: Colors.white,),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            )),
      ),
    );
  }
}
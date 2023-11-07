import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Custom_Container2 extends StatelessWidget {
  String images;
  VoidCallback onTap;
   Custom_Container2({required this.onTap, required this.images});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Container(
        height: 250,
          width: 300,
          decoration: BoxDecoration(
            image: DecorationImage(image: NetworkImage(images), fit: BoxFit.cover)
          ),
        ),
    );
  }
}
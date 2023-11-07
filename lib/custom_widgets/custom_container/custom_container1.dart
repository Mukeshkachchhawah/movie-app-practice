import 'package:flutter/material.dart';


class Custom_Container1 extends StatelessWidget {
  String image;
  VoidCallback onTap;
   Custom_Container1({required this.image, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return   InkWell(
      onTap: onTap,
      child: Container(
                height: 300,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            image),
                      fit: BoxFit.cover
                        )),
              ),
    );
  }
}

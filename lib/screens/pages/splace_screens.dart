import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/screens/pages/onboardingpage.dart';

class Splace_Screens extends StatefulWidget {
  const Splace_Screens({super.key});

  @override
  State<Splace_Screens> createState() => _Splace_ScreensState();
}

class _Splace_ScreensState extends State<Splace_Screens>
    with TickerProviderStateMixin {
  double _fontsize = 2;
  double _containerSize = 1.5;
  double _textOpacity = 0.0;
  double _containerOpacity = 0.0;

  late AnimationController _controller;
  late Animation<double> animation1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3));
    animation1 = Tween<double>(begin: 40, end: 20).animate(CurvedAnimation(
        parent: _controller, curve: Curves.fastLinearToSlowEaseIn))
      ..addListener(() {
        setState(() {
          _textOpacity = 1.0;
        });
      });
    _controller.forward();

    Timer(Duration(seconds: 2), () {
      setState(() {
        _fontsize = 1.06;
      });
    });
    Timer(Duration(seconds: 2), () {
      setState(() {
        _containerSize = 2;
        _containerOpacity = 1;
      });
    });

    Timer(Duration(seconds: 10), () {
      setState(() {
        Navigator.pushReplacement(context, PageTransition(OnBoardingPage()));
      });
    });
  
  }
  @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        body: Stack(
          children: [
            Column(
             // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //////// Animation Container ////////
                AnimatedContainer(
                  duration: Duration(microseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: 100,
                  width: 100,
                ),
                AnimatedOpacity(
                  opacity: _textOpacity,
                  duration: Duration(microseconds: 1000),
                  child: Center(
                    child: Text(
                      "Your App Name",
                      style: TextStyle(
                          fontSize: animation1.value,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            Center(
              child: AnimatedOpacity(
               
                duration: Duration(
                  microseconds: 2000,
                ),
                curve: Curves.fastLinearToSlowEaseIn, opacity: _containerOpacity,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 2000),
                  curve: Curves.fastLinearToSlowEaseIn,
                  height: 150,
                  width: 200,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                     // color: Colors.pink,
                      image: DecorationImage(image: NetworkImage("https://seeklogo.com/images/G/golden-movie-studio-logo-5979024D63-seeklogo.com.png"),fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(20)),
                  
                ),
              ),
            )
          ],
        ));
  }
}

class PageTransition extends PageRouteBuilder {
  final Widget page;
  PageTransition(this.page)
      : super(
            pageBuilder: (context, animation, anotherAnimation) => page,
            transitionDuration: Duration(microseconds: 2000),
            transitionsBuilder: (contex, animation, anotherAnimation, child) {
              animation = CurvedAnimation(
                  parent: animation, curve: Curves.fastLinearToSlowEaseIn);
              return Align(
                alignment: Alignment.bottomCenter,
                child: SizeTransition(
                  sizeFactor: animation,
                  child: page,
                  axisAlignment: 0,
                ),
              );
            });
}

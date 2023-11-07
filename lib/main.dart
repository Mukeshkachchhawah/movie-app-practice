import 'package:flutter/material.dart';
import 'package:video_player/screens/pages/splace_screens.dart';

import 'screens/pages/onboardingpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       
        primaryColor: Colors.red
      ),
      home: Splace_Screens(),
    //  home:  OnBoardingPage(),
    );
  }
}


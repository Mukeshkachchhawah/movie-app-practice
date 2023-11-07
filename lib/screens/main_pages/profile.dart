import 'package:flutter/material.dart';

import 'package:video_player/custom_widgets/custom_listtile/profile_listtile.dart';
import 'package:video_player/screens/user_profile/user_profile.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 11, 19),
      appBar: AppBar(
        title: Text("Account Settings"),
      ),
      body: Column(
        children: [
          Profile_ListTile(
            icons: Icon(Icons.person),
            onTap: () {
           
              Navigator.push(context,  MaterialPageRoute(builder: (context)=>User_Profile()));
            },
            textValue: 'Profile',
          ),
          Profile_ListTile(
            icons: Icon(Icons.login),
            onTap: () {},
            textValue: 'Sign in',
          ),
          Profile_ListTile(
            icons: Icon(Icons.subscriptions_outlined),
            onTap: () {},
            textValue: 'Subscribe Now',
          ),
          Profile_ListTile(
            icons: Icon(Icons.chat),
            onTap: () {},
            textValue: 'Chat With Us',
          ),
          Profile_ListTile(
            icons: Icon(Icons.download),
            onTap: () {},
            textValue: 'Download',
          ),
          Profile_ListTile(
            icons: Icon(Icons.settings),
            onTap: () {},
            textValue: 'Settings',
          ),
          Profile_ListTile(
            icons: Icon(Icons.help),
            onTap: () {},
            textValue: 'Help',
          )
      
        ],
      ),
    );
  }
}

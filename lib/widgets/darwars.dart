

import 'package:flutter/material.dart';

import '../custom_widgets/custom_listtile/profile_listtile.dart';

class Drawers extends StatelessWidget {
  const Drawers({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: Column(
        children: [
          SizedBox(
            height: 80,
            child: Card(
              color: Color.fromARGB(255, 6, 10, 14),
              child: Center(
                child: ListTile(
                  leading: Image.network(
                      "https://www.shareicon.net/data/512x512/2016/09/15/829472_man_512x512.png"),
                  title: Text(
                    "Mukesh Kachchhawaha",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Profile_ListTile(
            textValue: "Movies",
            icons: Icon(Icons.movie),
            onTap: () {},
          ),
          Profile_ListTile(
            textValue: "TV Shows",
            icons: Icon(Icons.live_tv),
            onTap: () {},
          ),
          Profile_ListTile(
            textValue: "Music",
            icons: Icon(Icons.music_note),
            onTap: () {},
          ),
          Profile_ListTile(
            textValue: "Audiobooks",
            icons: Icon(Icons.video_call),
            onTap: () {},
          ),
          Profile_ListTile(
            textValue: "Games",
            icons: Icon(Icons.games),
            onTap: () {},
          ),
          Profile_ListTile(
            textValue: "Apps",
            icons: Icon(Icons.app_settings_alt),
            onTap: () {},
          ),
          // Profile_ListTile(
          //   textValue: "Movies",
          //   icons: Icon(Icons.movie),
          //   onTap: () {},
          // ),
          Profile_ListTile(
            textValue: "Library",
            icons: Icon(Icons.library_add),
            onTap: () {},
          ),
          Profile_ListTile(
            textValue: "Setting",
            icons: Icon(Icons.settings),
            onTap: () {},
          ),
          Profile_ListTile(
            textValue: "Sign Out",
            icons: Icon(Icons.logout),
            onTap: () {},
          )
          // , Profile_ListTile(textValue: "Movies", icons: Icon(Icons.movie), onTap: () {  },)
          // , Profile_ListTile(textValue: "Movies", icons: Icon(Icons.movie), onTap: () {  },)
          // , Profile_ListTile(textValue: "Movies", icons: Icon(Icons.movie), onTap: () {  },)
        ],
      ),
    );
  }
}

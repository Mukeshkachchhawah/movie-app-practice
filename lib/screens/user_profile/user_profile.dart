import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../custom_widgets/custom_textfild/user_profile_textfild.dart';

class User_Profile extends StatelessWidget {
  const User_Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 11, 19),
      appBar: AppBar(
        title: Text("User Profile"),
        backgroundColor: Color.fromARGB(255, 2, 11, 19),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: CircleAvatar(
                maxRadius: 100,
                minRadius: 100,
                backgroundImage: NetworkImage(
                    "https://i.pinimg.com/736x/54/bc/26/54bc26716138d9fc1c26e09a77c0b759.jpg"),
                child: Padding(
                  padding: const EdgeInsets.only(left: 155, top: 90),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.edit,
                        size: 40,
                      )),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            User_Profile_TextFild(
              textValue: "Frist Name",
              suficons: Icon(Icons.edit),
              onTap: () {},
              peficons: Icon(Icons.person),
            ),
            User_Profile_TextFild(
              textValue: "Last Name",
              suficons: Icon(Icons.edit),
              onTap: () {},
              peficons: Icon(Icons.person),
            ),
            User_Profile_TextFild(
              textValue: "Gender",
              suficons: Icon(Icons.arrow_drop_down_circle_outlined),
              onTap: () {},
              peficons: Icon(Icons.person),
            ),
            User_Profile_TextFild(
              textValue: "Date of Birth",
              suficons: Icon(Icons.calendar_month),
              onTap: () {},
              peficons: Icon(Icons.person),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 50,
                child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:  Color.fromARGB(133, 35, 35, 36),),
                    onPressed: () {},
                    child: Center(
                      child: Text(
                        "Save Profile",
                        style: TextStyle(color: Colors.white),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}

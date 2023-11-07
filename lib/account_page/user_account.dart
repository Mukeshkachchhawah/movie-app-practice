import 'package:flutter/material.dart';
import 'package:video_player/account_page/otp_verifi.dart';
import 'package:video_player/screens/pages/splace_screens.dart';

class User_Account extends StatelessWidget {
  const User_Account({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(50)),
                child: Center(
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center_image(),
              SizedBox(
                height: 50,
              ),
              TextInput(),
              SizedBox(
                height: 50,
              ),
              Enter_value(),
              SizedBox(
                height: 25,
              ),
              Send_Otp(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget Center_image() {
    return Center(
        child: Image.network(
      "https://www.logintc.com/wp-content/uploads/LoginTC-cloud-copy@3x-1.png",
      scale: 4,
    ));
  }

  Widget TextInput() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Enter Your Phone Numbers",
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "You will receive a 6 digit code for phone numbers verification.",
            style: TextStyle(color: Colors.white, fontSize: 18),
          )
        ],
      ),
    );
  }

  Widget Enter_value() {
    return TextFormField(
      style: TextStyle(color: Colors.white),
      cursorColor: Colors.white,
      decoration: InputDecoration(
        hintText: "Enter Phone Numbers",
        hintStyle: TextStyle(color: Colors.white),
        labelText: "Phone Numbers", 
        labelStyle: TextStyle(color: Colors.black),
        fillColor: Colors.grey,
        filled: true,
        border: OutlineInputBorder(gapPadding: 10,
            borderRadius: BorderRadius.circular(20),
            borderSide: BorderSide(color: Colors.white, width: 10)),
      ),
    );
  }

  Widget Send_Otp(BuildContext context) {
    return InkWell(
      onTap: (){
Navigator.push(context, PageTransition(OTP_Verification()));
      },
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Text(
            "SEND OTP",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

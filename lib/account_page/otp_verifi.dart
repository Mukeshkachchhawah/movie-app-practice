import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:video_player/screens/pages/home_page.dart';

class OTP_Verification extends StatelessWidget {
  const OTP_Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            //  mainAxisAlignment: MainAxisAlignment.center,
            //  crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: SizedBox(
                    height: 300,
                    width: 300,
                    child: Image.network(
                        "https://www.web2sms.co.in/wp-content/uploads/2020/05/otpa.png")),
              ),
              SizedBox(
                height: 20,
              ),
              InputValue(),
              SizedBox(
                height: 20,
              ),
              Row(
mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Re-Send OTP", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,color: Colors.red),)
                ],
              ),
              SizedBox(
                height: 20,
              ),

VeryButton(context)
            ],
          ),
        ),
      ),
    );
  }

  Widget InputValue() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Text(
          "Enter Your Code",
          style: TextStyle(
              fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "Please enter the 6 digit varification code send to numbers +7296****28",
          style: TextStyle(fontSize: 16, color: Colors.white),
        )
      ],
    );
  }

  Widget VeryButton(BuildContext context){
    return GestureDetector(
      onTap: () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
      },
      child: Container(
        height: 50,
        width: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.yellow
        ),child: Center(
          child: Text(
            "Verify", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}

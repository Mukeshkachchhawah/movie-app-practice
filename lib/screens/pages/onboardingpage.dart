import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:video_player/account_page/user_account.dart';

import 'home_page.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  _OnBoardingPageState createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    Navigator.of(context).push(
      MaterialPageRoute(builder: (_) => User_Account()),
    );
  }

///////////// Home Cinema formate /////////
  Widget _buildFullscreenImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          'https://png.pngtree.com/png-clipart/20230605/original/pngtree-two-small-cartoon-bubbles-are-shown-on-screen-png-image_9179628.png',
          //  fit: BoxFit.scaleDown,
         // scale: 3,
          height: double.infinity,
          width: double.infinity,
          alignment: Alignment.bottomCenter,
        ),
      ),
    );
  }
//////////// home cinema formate ////////////////
  Widget _buildFullscreenImages() {
    return Padding(
      padding: const EdgeInsets.only(top: 110),
      child: Image.network(
        "https://static-00.iconduck.com/assets.00/snowman-with-penguin-cute-cartoon-christmas-holiday-holidays-illustration-2048x1763-qpsvi5gm.png",
          fit: BoxFit.cover,
        
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.center,
      ),
    );
  }

////////  add image Musical format //////////
  Widget _buildImage() {
    return Padding(
      padding:  EdgeInsets.only(top: 110),
      child: Image.network(
        'https://getwideideas.com/wp-content/uploads/customerSuccess.png',
        fit: BoxFit.scaleDown,
       scale: 1,
        height: double.infinity,
        width: double.infinity,
   alignment: Alignment.bottomCenter,
      ),
    );
  }
/////// Comedy format ////////////
  Widget _buildImage1() {
    return Padding(
      padding: const EdgeInsets.only(top: 110),
      child: Image.network(
        'https://mir-s3-cdn-cf.behance.net/projects/404/c943cc171404119.Y3JvcCwxNDc1LDExNTQsMjczLDQwNQ.png',
        // fit: BoxFit.scaleDown,
        scale: 1,
        height: double.infinity,
        width: double.infinity,
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  Widget _buildImage2() {
    return Image.network(
      'https://png.pngtree.com/png-clipart/20230605/original/pngtree-two-small-cartoon-bubbles-are-shown-on-screen-png-image_9179628.png',
      fit: BoxFit.scaleDown,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage3() {
    return Image.network(
      'https://altabel.files.wordpress.com/2016/11/1.jpg',
      fit: BoxFit.cover,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  Widget _buildImage4() {
    return Image.network(
      'https://wallpapers.com/images/featured/geg5qaw6axcmxou6.jpg',
      fit: BoxFit.scaleDown,
      height: double.infinity,
      width: double.infinity,
      alignment: Alignment.center,
    );
  }

  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = const PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
    );

    return IntroductionScreen(
      // key: introKey,
      // globalBackgroundColor: Color.fromARGB(255, 235, 34, 34),
      // globalHeader: Align(
      //   alignment: Alignment.bottomLeft,
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 16, right: 16),
      //       // child: _buildImage('flutter.png', 100),
      //     ),
      //   ),
      // ),
      globalFooter: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 10),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            child: const Text(
              'Create Account',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            onPressed: () => _onIntroEnd(context),
          ),
        ),
      ),
      pages: [
        PageViewModel(
          title: "MUSICAL",
          body: "Cum soon natoque pematbus et magnis dis part so on",
          image: _buildImage(),
          decoration:  PageDecoration(
           // contentMargin: EdgeInsets.only(left: 50, right: 50, top: 200),
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
    )
          // pageDecoration,
        ),
        PageViewModel(
          title: "COMEDY",
          body:
              "Download the Stockpile app and master the market with our mini-lesson.",
          image: _buildImage1(),
          decoration: pageDecoration,
        ),
        PageViewModel(
            title: "HOME\nCINEMA",
            body:
                "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
            image: _buildFullscreenImage(),
            decoration: pageDecoration),
        PageViewModel(
            title: "MELODRAMA",
            body:
                "Pages can be full screen as well.\n\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc id euismod lectus, non tempor felis. Nam rutrum rhoncus est ac venenatis.",
            image: _buildFullscreenImages(),
            decoration: pageDecoration),
        PageViewModel(
          title: "ROMANTIC \nFILM",
          body: "Another beautiful body text for this example onboarding",
          image: _buildImage3(),

          //////////// button ////////
          // footer: ElevatedButton(
          //   onPressed: () {
          //     introKey.currentState?.animateScroll(0);
          //   },
          //   child: const Text(
          //     'FooButton',
          //     style: TextStyle(color: Colors.white),
          //   ),
          //   style: ElevatedButton.styleFrom(
          //     primary: Colors.lightBlue,
          //     shape: RoundedRectangleBorder(
          //       borderRadius: BorderRadius.circular(8.0),
          //     ),
          //   ),
          // ),
          decoration: pageDecoration,
        ),
        // PageViewModel(
        //   title: "HORROR",
        //   bodyWidget: Row(
        //     mainAxisAlignment: MainAxisAlignment.center,
        //     children: const [
        //       Text("Click on ", style: bodyStyle),
        //       Icon(Icons.edit),
        //       Text(" to edit a post", style: bodyStyle),
        //     ],
        //   ),
        //   decoration: pageDecoration.copyWith(
        //     bodyFlex: 2,
        //     imageFlex: 4,
        //     bodyAlignment: Alignment.bottomCenter,
        //     imageAlignment: Alignment.topCenter,
        //   ),
        //   image: _buildImage4(),
        //   reverse: true,
        // ),
      ],

      onDone: () => _onIntroEnd(context),
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skipOrBackFlex: 0,
      nextFlex: 0,
      showBackButton: true,
      //rtl: true, // Display as right-to-left
      back: const Icon(Icons.arrow_back),
      // skip: const Text('Skip', style: TextStyle(fontWeight: FontWeight.w600)),
      next: const Icon(Icons.arrow_forward),
      done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: kIsWeb
          ? const EdgeInsets.all(12.0)
          : const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFFBDBDBD),
        activeSize: Size(20.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
      dotsContainerDecorator: const ShapeDecoration(
        color: Colors.black87,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
      ),
    );
  }
}

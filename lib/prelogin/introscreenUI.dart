import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nice_intro/intro_screen.dart';
import 'package:nice_intro/intro_screens.dart';
import 'package:talenstory_main/prelogin/widgets/plwidgetfile.dart';
import 'FirstRegister.dart';
import 'onboardmainUI.dart';




List<IntroScreen> pages =  [
  IntroScreen(
    title: 'Safe Search',

    imageAsset: 'Assets/logos/imgs/intro1.png',
    description: 'Safe,Secure and digital environment  for schools.',
    headerBgColor: Colors.white,
  ),
  IntroScreen(
    title: 'Secure Community ',
    headerBgColor: Colors.white,
    imageAsset: 'Assets/logos/imgs/intro2.png',
    description: "Experiential Learning with friends & communities.",
  ),
  IntroScreen(
    title: 'Digital Library',
    headerBgColor: Colors.white,
    imageAsset: 'Assets/logos/imgs/intro3.png',
    description: "Online classes & Digital Library for teachers,professionals  and students",
  ),
];

class IntroScreensUI extends StatefulWidget {


  @override
  _IntroScreensUIState createState() => _IntroScreensUIState();
}

class _IntroScreensUIState extends State<IntroScreensUI> {
  @override
  Widget build(BuildContext context) {
    var screens = IntroScreens(
      onDone: () => Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => FirstRegistrationUI(),
        ),
      ),
      onSkip: () => print('Skipping the intro slides'),
      footerBgColor: Colors.white,
      activeDotColor: Color(0xFF7E1185
      ),
      textColor: Color(0xFF7E1185
      ),
      skipText: "Skip",
      footerRadius: 18.0,
//      indicatorType: IndicatorType.CIRCLE,
      slides: pages,
      footerPadding: EdgeInsets.only(top: 10.0),
    );

    return Scaffold(
      body: screens,
    );
  }
}

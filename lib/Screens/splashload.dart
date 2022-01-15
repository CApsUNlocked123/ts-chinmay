import 'package:flutter/material.dart';
import 'dart:async';
import 'package:talenstory_main/prelogin/initloaderfile.dart';
import 'package:talenstory_main/prelogin/introscreenUI.dart';



class SplashScreenUI extends StatefulWidget {
  const SplashScreenUI({Key? key}) : super(key: key);



  @override
  _SplashScreenUIState createState() => _SplashScreenUIState();
}

class _SplashScreenUIState extends State<SplashScreenUI> {

  @override
   initState()  {
    // TODO: implement initState

    super.initState();
  }



  @override
  void dispose() {
    super.dispose();
  }

  Widget SplashTrigger(){
    return Container(
    height: height,
    width: width,
    color: Colors.white,
    child: Center(

    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Image.asset("Assets/logos/splashui.jpg", width: width*0.85, height: height*0.9,)
    ],
    ),

    ));
  }

  @override
  Widget build(BuildContext context) {

    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    Timer(const Duration(milliseconds: 400), () {
      setState(() {
      });
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  IntroScreensUI()));
    });
    return SafeArea(child: Scaffold(
      body: SplashTrigger(

      ),
    ));
  }
}

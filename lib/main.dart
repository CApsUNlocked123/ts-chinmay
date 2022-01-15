import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talenstory_main/Screens/splashload.dart';
import 'package:talenstory_main/prelogin/initloaderfile.dart';
import 'prelogin/FirstRegister.dart';
import 'prelogin/introscreenUI.dart';
import 'prelogin/loginscreenmain.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();

  firstlogin = await initCheckerFn();

  runApp(new MaterialApp(
    home: firstlogin==true ? IntroScreensUI():LoginScreen(),
    theme: ThemeData(
      textTheme: GoogleFonts.nunitoTextTheme()
    ),
    debugShowCheckedModeBanner: false,
  ));
}



//Main color: Color(0xFF7E1185),
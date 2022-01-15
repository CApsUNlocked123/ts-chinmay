
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../initloaderfile.dart';

Widget IntroTitle(title){
  return Text(title,style: GoogleFonts.nunito(fontWeight: FontWeight.w700, fontSize: 24.0),);

}




Widget OBMainCard(name) {


  return ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Container(
      width: width*0.35,
      height: height*0.27,
      color: Colors.white,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(radius: 50.0, backgroundColor: Colors.blue, ),
            SizedBox(height: 5.0),
            Column(
              children: [
                Text("I am a"),
                SizedBox(height: 2.0,),
                Text(name),
              ],
            ),

          ],
        ),
      ),
    ),
  );

}


Widget ContainerCard(std, ifclass, ifselected){
  return Container(
    width: width*0.35,
    height: height * 0.02,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(9.14),

     // backgroundBlendMode: BlendMode.clear,
      color: ifselected == true? Color(0xFF7E1185):Color(0xffe1e1e1),//0xffe1e1e1
    ),
    child: Center(
      child: ifclass == true? Text(
        "Class ${std}",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ifselected == true? Colors.white:Color(0xff2f2f2f),
          fontSize: 14,
        ),
      )  :Text(
        "${std}",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: ifselected == true? Colors.white:Color(0xff2f2f2f),
          fontSize: 14,
        ),
      ),
    ),
  );

}

Widget CategoryBox(topic){
  return ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Container(
      width: 50.0,
      height: 50.0,
      color: Colors.white,
      child: Center(
        child: Text("$topic"),
      ),
    ),
  );
}

Widget LanguageBox(language){
  return ClipRRect(
    borderRadius: BorderRadius.circular(10.0),
    child: Container(
      width: 50.0,
      height: 50.0,
      color: Colors.white,
      child: Center(
        child: Text("$language"),
      ),
    ),
  );
}
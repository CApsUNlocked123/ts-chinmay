import 'package:flutter/material.dart';
import 'package:talenstory_main/prelogin/widgets/plwidgetfile.dart';
import 'FirstRegister.dart';
import 'initloaderfile.dart';
import 'studentOBMain.dart';




class OnboardUIMain extends StatefulWidget {
  @override
  _OnboardUIMainState createState() => _OnboardUIMainState();
}

class _OnboardUIMainState extends State<OnboardUIMain> {
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        color: Colors.blue.withOpacity(0.8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Let's get started with yourself!",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Container(
                  height: height * 0.6,
                  width: width * 0.8,
                  color: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 1.0,
                          left: 1.0,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: InkWell(
                                onTap: () {
                                  signupdata = {
                                    "category": "student",
                                  };
                                  Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              StudentFirstOB()));
                                },
                                child: OBMainCard("Student")),
                          ),
                        ), //Container
                        Positioned(
                          top: 1.0,
                          right: 1.0,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: OBMainCard("Teacher"),
                          ),
                        ), //Container
                        Positioned(
                          bottom: 1.0,
                          right: 1.0,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: OBMainCard("Management"),
                          ),
                        ),
                        Positioned(
                          bottom: 1.0,
                          left: 1.0,
                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: OBMainCard("Professional"),
                          ),
                        ),
                      ], //<Widget>[]
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

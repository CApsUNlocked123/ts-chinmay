import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talenstory_main/prelogin/OTPInputUI.dart';
import 'initloaderfile.dart';


Map<String, String> signupdata = {};


class FirstRegistrationUI extends StatefulWidget {
  const FirstRegistrationUI({Key? key}) : super(key: key);

  @override
  _FirstRegistrationUIState createState() => _FirstRegistrationUIState();
}

class _FirstRegistrationUIState extends State<FirstRegistrationUI> {

  late int mobilenumber;
  String mobiletext = "+91 | ";
  late TextEditingController mobilecontroller;

  @override
  void initState() {
    // TODO: implement initState
    mobilecontroller = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    mobilecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.08,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Login / Signup",
                        style: GoogleFonts.nunito(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7E1185)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Welcome! Please enter your mobile number to continue.",
                        style: GoogleFonts.nunito(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF6E6E6E)),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Center(
                      child: Image.asset(
                        "Assets/logos/imgs/loginreg.png",
                        height: height * 0.18,
                        width: width * 0.7,
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Mobile Number",
                        style: GoogleFonts.nunito(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF6E6E6E)),
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Center(
                      child: Container(
                        height: height * 0.055,
                        width: width * 0.83,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14.0),
                          border: Border(
                            top: BorderSide(
                              color: Color(
                                0xffbdbdbd,
                              ),
                              width: 1,
                            ),
                            right: BorderSide(
                              color: Color(
                                0xffbdbdbd,
                              ),
                              width: 1,
                            ),
                            bottom: BorderSide(
                              color: Color(
                                0xffbdbdbd,
                              ),
                              width: 1,
                            ),
                            left: BorderSide(
                              color: Color(
                                0xffbdbdbd,
                              ),
                              width: 1,
                            ),
                          ),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: 50.0,
                    ),
                    Center(
                      child: Container(
                        height: height * 0.065,
                        width: width * 0.83,
                        decoration: BoxDecoration(
                          color: Color(0xFF7E1185),
                          borderRadius: BorderRadius.circular(14.0),
                          border: Border(
                            top: BorderSide(
                              color: Color(
                                0xffbdbdbd,
                              ),
                              width: 1,
                            ),
                            right: BorderSide(
                              color: Color(
                                0xffbdbdbd,
                              ),
                              width: 1,
                            ),
                            bottom: BorderSide(
                              color: Color(
                                0xffbdbdbd,
                              ),
                              width: 1,
                            ),
                            left: BorderSide(
                              color: Color(
                                0xffbdbdbd,
                              ),
                              width: 1,
                            ),
                          ),
                        ),
                        child: InkWell(
                          onTap: (){

                            CaptureMobileFn();

                          },
                          child: Center(
                            child: Text(
                              "Request OTP", style: GoogleFonts.nunito(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void CaptureMobileFn() {
    signupdata = {
      "mobile": mobilecontroller.value.toString(),
    };

    user.mobile = signupdata['mobile'].toString();
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) =>
                OTPInputUI()));

  }
}

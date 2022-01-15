import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:talenstory_main/Utils/smsAPI.dart';
import 'package:talenstory_main/prelogin/studentOBMain.dart';



class OTPInputUI extends StatefulWidget {
  const OTPInputUI({Key? key}) : super(key: key);

  @override
  _OTPInputUIState createState() => _OTPInputUIState();
}

class _OTPInputUIState extends State<OTPInputUI> {

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: height,
          width: width,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(padding: EdgeInsets.all(8.0), child: InkWell(
                          
                          onTap: (){},
                          child: Icon(Icons.arrow_back, color: Colors.black,),
                        ),),
                        Padding(padding: EdgeInsets.all(8.0), child: InkWell(

                          onTap: (){},
                          child: Icon(Icons.help_outline, color: Colors.black,),
                        ),)
                      ],
                    ),
                    SizedBox(height: 15.0,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "OTP Verification",
                        style: GoogleFonts.nunito(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7E1185)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Please enter the 4 digit OTP sent to your mobile number.",
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
                        "Assets/logos/imgs/otpwait.png",
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
                        "OTP",
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
                          onTap: () async{
                          Navigator.push(context,MaterialPageRoute(builder: (context) => StudentFirstOB()));
                          },
                          child: Center(
                            child: Text(
                              "Verify", style: GoogleFonts.nunito(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
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
}

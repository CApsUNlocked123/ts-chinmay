import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'FirstRegister.dart';
import 'initloaderfile.dart';
import 'onboardmainUI.dart';
import 'widgets/plwidgetfile.dart';


//################# First Screen ####################

class StudentFirstOB extends StatefulWidget {
  @override
  _StudentFirstOBState createState() => _StudentFirstOBState();
}

class _StudentFirstOBState extends State<StudentFirstOB> {
  int classvalue = 0;
  int tapindex=13;
  bool processing = false;

  ScrollController scrollController = ScrollController(
    initialScrollOffset: 1, // or whatever offset you wish
    keepScrollOffset: true,
  );

  var orientation;
  @override
  Widget build(BuildContext context) {
    orientation = MediaQuery.of(context).orientation;
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
                        "Select Class",
                        style: GoogleFonts.nunito(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF7E1185)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Please select your standard.",
                        style: GoogleFonts.nunito(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF6E6E6E)),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),

                    Container(
                      height: height*0.47,
                      width: width * 0.95,

                      color: Colors.transparent,
                      child: GridView.builder(
                        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: (orientation == Orientation.portrait) ? 3 : 4),
                        itemCount: 12,
                        itemBuilder: (BuildContext context, int index) {
                          return new Card(
                            child: new GridTile(
                              child: InkWell(onTap:(){

                                classvalue = index+1;

                                setState(() {
                                  tapindex = classvalue;
                                });


                              },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:  tapindex==index+1 ? ContainerCard(index + 1, true, true): ContainerCard(index + 1, true, false),
                                  )),
                            ),
                          );
                        },
                      ),
                    ),
                    
                    
                    SizedBox(
                      height: 20.0,
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
                            if (classvalue!= null){
                              signupdata = {
                                "class": classvalue.toString(),

                              };
                              Navigator.push(context,MaterialPageRoute(builder: (context) => StudentSecondOB()
                              ));
                            }


                          },
                          child: Center(
                            child: Text(
                              "Confirm", style: GoogleFonts.nunito(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white),
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

//################# First Screen ####################







//################# Second Screen ####################

class StudentSecondOB extends StatefulWidget {

  @override
  _StudentSecondOBState createState() => _StudentSecondOBState();
}

class _StudentSecondOBState extends State<StudentSecondOB> {
  List<String> Selectedtopics=[];
  bool processing = false;
  List<String> topiclist = ["Maths", "Science", "Language", "Arts", "Yoga", "Social", "Coding & Technology", "Soft Skills", "Ethics"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                "Select preferred topics of interest",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: height * 0.8,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: processing == true
                        ? SizedBox(
                      height: 100.0,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      ),
                    )
                        : ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: topiclist.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              tileColor: Selectedtopics.contains(topiclist[index])?Colors.green:Colors.white,
                              title: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (Selectedtopics.contains(topiclist[index])){
                                        Selectedtopics.remove(topiclist[index]);
                                      }
                                      else Selectedtopics.add(topiclist[index]);
                                    });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CategoryBox(topiclist[index]),
                                  )));
                        })),
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => StudentThirdOB()));

                    },
                    child: Icon(Icons.arrow_forward, size: 50.0, color: Colors.white,),
                  ),
                  SizedBox(width: 5.0,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//################# Second Screen ####################




//################# Third Screen ####################

class StudentThirdOB extends StatefulWidget {

  @override
  _StudentThirdOBState createState() => _StudentThirdOBState();
}

class _StudentThirdOBState extends State<StudentThirdOB> {
  List<String> Selectedlang=[];
  bool processing = false;
  List<String> LanguageList = ["English", "Hindi", "Marathi", "Gujrathi", "Telugu", "Tamil", "Kannada", "Malyalam"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                "Select preferred langauges",
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: height * 0.8,
                child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: processing == true
                        ? SizedBox(
                      height: 100.0,
                      child: Center(
                        child: CircularProgressIndicator(
                          color: Colors.blue,
                        ),
                      ),
                    )
                        : ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: LanguageList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                              tileColor: Selectedlang.contains(LanguageList[index])?Colors.green:Colors.white,
                              title: InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (Selectedlang.contains(LanguageList[index])){
                                        Selectedlang.remove(LanguageList[index]);
                                      }
                                      else Selectedlang.add(LanguageList[index]);
                                    });

                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: LanguageBox(LanguageList[index]),
                                  )));
                        })),
              ),
              SizedBox(height: 5.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Icon(Icons.arrow_forward, size: 50.0, color: Colors.white,),
                  ),
                  SizedBox(width: 5.0,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//################# Third Screen ####################
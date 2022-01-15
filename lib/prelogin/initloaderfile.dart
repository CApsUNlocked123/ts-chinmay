
import 'package:flutter/material.dart';
import 'package:talenstory_main/Models/usermodel.dart';
import 'package:talenstory_main/Utils/sharedpreffile.dart';


//################## Init Variables ###############################
bool initprocessing = false;
bool firstlogin = true;
late double height, width;
LocalStorage localStorage = LocalStorage();
AppUser user = new AppUser();

initCheckerFn() async {
  var checkFirstLogins = await checkFirstLogin();
  return checkFirstLogins;
}

checkFirstLogin() async {

  print(user.username);
  if ( await localStorage.getUserName() == Null) {

    firstlogin = true;
  }
  else user.username = (await localStorage.getUserName().toString());
  // else firstlogin = false;
  return firstlogin;
}

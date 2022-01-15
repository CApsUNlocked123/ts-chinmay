import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  savedUserName(userName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userName', userName);
  }

  getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    String? userName = prefs.getString('userName');
    return userName.toString();
  }

  savedUserId(userId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('userId', userId);
  }

  getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    //Return String
    int? userId = prefs.getInt('userId');
    return userId.toString();
  }
}
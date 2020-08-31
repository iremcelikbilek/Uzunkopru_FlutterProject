import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deneme/screens/AboutPage.dart';
import 'package:flutter_deneme/screens/GamePage.dart';
import 'package:flutter_deneme/screens/HelpPage.dart';
import 'package:flutter_deneme/screens/HomePage.dart';
import 'package:flutter_deneme/screens/InformationPage.dart';
import 'package:flutter_deneme/screens/NotificationDetail.dart';
import 'package:flutter_deneme/screens/NotificationPage.dart';
import 'package:flutter_deneme/screens/PlayGamePage.dart';
import 'package:flutter_deneme/screens/ProfilePage.dart';
import 'package:flutter_deneme/screens/QuestionPage.dart';
import 'package:flutter_deneme/screens/ScorePage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    routes: {
      "/": (context) => HomePage(),
      "/GamePage": (context) => GamePage(),
      "/NotificationPage": (context) => NotificationPage(),
      "/AboutPage": (context) => AboutPage(),
      "/ScorePage": (context) => ScorePage(),
      "/PlayGamePage": (context) => PlayGamePage(),
      "/ProfilePage": (context) => ProfilePage(),
      "/HelpPage": (context) => HelpPage(),
      //"/QuestionPage" : (context) => QuestionPage(),
      //"InformationPage": (context) => InformationPage()
    },
    onGenerateRoute: (RouteSettings settings){
      List<String> pathElemanlari = settings.name.split("/");
      if(pathElemanlari[1] == 'NotificationDetail'){
        return MaterialPageRoute(builder: (context) => NotificationDetail(int.parse(pathElemanlari[2])));
      }
      return null;
    },
  ));
}


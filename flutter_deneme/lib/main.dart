import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_deneme/screens/AboutPage.dart';
import 'package:flutter_deneme/screens/GamePage.dart';
import 'package:flutter_deneme/screens/NotificationPage.dart';
import 'package:flutter_deneme/screens/ScorePage.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: "/",
    routes: {
      "/": (context) => HomePage(),
      "/GamePage": (context) => GamePage(),
      "/NotificationPage": (context) => NotificationPage(),
      "/AboutPage": (context) => AboutPage(),
      "/ScorePage": (context) => ScorePage(),
    },
  ));
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Flexible(
            flex: 3,
            child: Container(
                margin: EdgeInsets.only(right: 5.0, left: 5.0, bottom: 5.0),
                color: Colors.grey.shade50,
                child: Container(
                    constraints:
                        BoxConstraints.expand(width: 600.0, height: 900.0),
                    child:
                        Image.asset("assets/images/main_activity_header.png"))),
          ),
          Flexible(
            flex: 2,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/GamePage"),
              child: Container(
                margin: EdgeInsets.all(10.0),
                color: Colors.grey.shade50,
                child: Image.asset("assets/images/mainactivity_btngame.png"),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, "/NotificationPage"),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.only(right: 5.0, left: 5.0),
                      color: Colors.grey.shade50,
                      child: Image.asset(
                          "assets/images/mainactivity_btnnotification.png"),
                    ),
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "/AboutPage"),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.only(right: 5.0, left: 5.0),
                      color: Colors.grey.shade50,
                      child: Image.asset(
                          "assets/images/mainactivity_btnabout.png"),
                    ),
                  ),
                ),
                Flexible(
                  child: GestureDetector(
                    onTap: () => Navigator.pushNamed(context, "/ScorePage"),
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.only(right: 5.0, left: 5.0),
                      color: Colors.grey.shade50,
                      child: Image.asset(
                          "assets/images/mainactivity_btngivescore.png"),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Flexible(flex: 1, child: buildFooter(context)),
        ],
      ),
    );
  }

  Widget buildFooter(BuildContext context) {
    return Container(
      child: Flexible(
        child: Column(
          children: <Widget>[
            Divider(
              color: Colors.black12,
              thickness: 3.0,
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              color: Colors.transparent,
              child: Image.asset("assets/images/mainactivity_footer.png"),
            ),
          ],
        ),
      ),
    );
  }
}

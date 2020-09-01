import 'package:flutter/material.dart';
import 'package:flutter_deneme/screens/QuestionPage.dart';
import 'package:percent_indicator/percent_indicator.dart';

class PlayGamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PlayGamePageState();
  }
}

class _PlayGamePageState extends State<PlayGamePage> {
  int totalCorrectAnswer1 = 0;
  int totalCorrectAnswer2 = 0;
  int totalCorrectAnswer3 = 0;
  int totalCorrectAnswer4 = 0;
  int totalCorrectAnswer5 = 0;
  int totalPoint = 0;
  int fiftyPercentJoker = 1;
  int timeJoker = 1;
  bool stage1complete = false;
  bool stage2complete = false;
  bool stage3complete = false;
  bool stage4complete = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: buildBody(context)),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: const DecorationImage(
          image: AssetImage("assets/images/app_common_background4.jpg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Card(
            margin: EdgeInsets.all(10),
            elevation: 11,
            color: Colors.white.withAlpha(170),
            child: buildHeader(context),
          ),
          Expanded(
            child: ListView(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 11,
                  color: Colors.blue.withAlpha(170),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              child: Image.asset(
                                  "assets/images/categoryactivity_item_thumb_1.png"),
                            ),
                            Text(
                              "Uzunköprü",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Seviye 1",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              child: LinearPercentIndicator(
                                width: 150.0,
                                lineHeight: 14,
                                backgroundColor: Colors.blue.shade50,
                                progressColor: Colors.lightBlueAccent,
                                percent: double.parse("0.$totalCorrectAnswer1"),
                                center: Text(
                                  "%${totalCorrectAnswer1 * 10}",
                                  style: new TextStyle(fontSize: 12.0),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () => Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          QuestionPage(1))).then((value) {
                                totalCorrectAnswer1 = value[0];
                                if (totalCorrectAnswer1 >= 7) {
                                  stage1complete = true;
                                }
                                setState(() {
                                  totalPoint = value[1];
                                  fiftyPercentJoker = value[2];
                                  timeJoker = value[3];
                                });
                              }),
                              color: Colors.blue.shade100,
                              child: Text("Yarış"),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //******************************** 2. Card *****************************************
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 11,
                  color: Colors.red.withAlpha(170),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              child: Image.asset(
                                  "assets/images/categoryactivity_item_thumb_4.png"),
                            ),
                            Text(
                              "Tarihi Eserler",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      (stage1complete == true)
                          ? Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Seviye 2",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  Container(
                                    child: LinearPercentIndicator(
                                      width: 150.0,
                                      lineHeight: 14,
                                      backgroundColor: Colors.red.shade50,
                                      progressColor: Colors.redAccent.shade100,
                                      percent: double.parse(
                                          "0.$totalCorrectAnswer2"),
                                      center: Text(
                                        "%${totalCorrectAnswer2 * 10}",
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  RaisedButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuestionPage(2))).then((value) {
                                      totalCorrectAnswer2 = value[0];
                                      if (totalCorrectAnswer2 >= 7) {
                                        stage2complete = true;
                                      }
                                      setState(() {
                                        totalPoint = value[1];
                                        fiftyPercentJoker = value[2];
                                        timeJoker = value[3];
                                      });
                                    }),
                                    color: Colors.red.shade100,
                                    child: Text("Yarış"),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.only(right: 80),
                              child: Image.asset(
                                "assets/images/categoryactivity_item_lock.png",
                                width: 50,
                                height: 50,
                              )),
                    ],
                  ),
                ),
                //******************************** 3. Card *****************************************
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 11,
                  color: Colors.orange.withAlpha(170),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              child: Image.asset(
                                  "assets/images/categoryactivity_item_thumb_3.png"),
                            ),
                            Text(
                              "Önemli Yerler",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      (stage2complete == true && stage1complete == true)
                          ? Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Seviye 3",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  Container(
                                    child: LinearPercentIndicator(
                                      width: 150.0,
                                      lineHeight: 14,
                                      backgroundColor: Colors.orange.shade50,
                                      progressColor:
                                          Colors.orangeAccent.shade100,
                                      percent: double.parse(
                                          "0.$totalCorrectAnswer3"),
                                      center: Text(
                                        "%${totalCorrectAnswer3 * 10}",
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  RaisedButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuestionPage(3))).then((value) {
                                      totalCorrectAnswer3 = value[0];
                                      if (totalCorrectAnswer3 >= 7) {
                                        stage3complete = true;
                                      }
                                      setState(() {
                                        totalPoint = value[1];
                                        fiftyPercentJoker = value[2];
                                        timeJoker = value[3];
                                      });
                                    }),
                                    color: Colors.orange.shade100,
                                    child: Text("Yarış"),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.only(right: 80),
                              child: Image.asset(
                                "assets/images/categoryactivity_item_lock.png",
                                width: 50,
                                height: 50,
                              )),
                    ],
                  ),
                ),

                //******************************** 4. Card *****************************************
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 11,
                  color: Colors.purple.withAlpha(170),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              child: Image.asset(
                                  "assets/images/categoryactivity_item_thumb_2.png"),
                            ),
                            Text(
                              "Şehrimiz",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      (stage1complete == true &&
                              stage2complete == true &&
                              stage3complete == true)
                          ? Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Seviye 4",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  Container(
                                    child: LinearPercentIndicator(
                                      width: 150.0,
                                      lineHeight: 14,
                                      backgroundColor: Colors.purple.shade50,
                                      progressColor:
                                          Colors.purpleAccent.shade100,
                                      percent: double.parse(
                                          "0.$totalCorrectAnswer4"),
                                      center: Text(
                                        "%${totalCorrectAnswer4 * 10}",
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  RaisedButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuestionPage(4))).then((value) {
                                      totalCorrectAnswer4 = value[0];
                                      if (totalCorrectAnswer4 >= 7) {
                                        stage4complete = true;
                                      }
                                      setState(() {
                                        totalPoint = value[1];
                                        fiftyPercentJoker = value[2];
                                        timeJoker = value[3];
                                      });
                                    }),
                                    color: Colors.purple.shade100,
                                    child: Text("Yarış"),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.only(right: 80),
                              child: Image.asset(
                                "assets/images/categoryactivity_item_lock.png",
                                width: 50,
                                height: 50,
                              )),
                    ],
                  ),
                ),
                //******************************** 5. Card *****************************************
                Card(
                  margin: EdgeInsets.all(20),
                  elevation: 11,
                  color: Colors.green.withAlpha(170),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundColor: Colors.transparent,
                              radius: 50,
                              child: Image.asset(
                                  "assets/images/categoryactivity_item_thumb_5.png"),
                            ),
                            Text(
                              "Şehir Tarihi",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      (stage1complete == true &&
                              stage2complete == true &&
                              stage3complete == true &&
                              stage4complete == true)
                          ? Container(
                              padding: EdgeInsets.all(20),
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    "Seviye 5",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  Container(
                                    width: 170,
                                    height: 20,
                                    child: LinearPercentIndicator(
                                      width: 150.0,
                                      lineHeight: 14,
                                      backgroundColor: Colors.green.shade50,
                                      progressColor:
                                          Colors.greenAccent.shade200,
                                      percent: double.parse(
                                          "0.$totalCorrectAnswer5"),
                                      center: Text(
                                        "%${totalCorrectAnswer5 * 10}",
                                        style: new TextStyle(fontSize: 12.0),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 10,
                                    height: 10,
                                  ),
                                  RaisedButton(
                                    onPressed: () => Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QuestionPage(5))).then((value) {
                                      totalCorrectAnswer5 = value[0];
                                      setState(() {
                                        totalPoint = value[1];
                                        fiftyPercentJoker = value[2];
                                        timeJoker = value[3];
                                      });
                                    }),
                                    color: Colors.green.shade100,
                                    child: Text("Yarış"),
                                  )
                                ],
                              ),
                            )
                          : Container(
                              padding: EdgeInsets.only(right: 80),
                              child: Image.asset(
                                "assets/images/categoryactivity_item_lock.png",
                                width: 50,
                                height: 50,
                              )),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              "Puan:",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Container(
            child: Text(
              totalPoint.toString(),
              style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
            ),
          ),
          Spacer(),
          Container(
            child: Text(
              "Seviyeler",
              style: TextStyle(
                  color: Colors.red, fontSize: 30, fontStyle: FontStyle.italic),
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Text(
              "%",
              style: TextStyle(color: Colors.red, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 10),
            constraints: BoxConstraints(minWidth: 20, minHeight: 20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black26, width: 2),
            ),
            child: Text(
              fiftyPercentJoker.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 5),
            child: Icon(
              Icons.timer,
              color: Colors.red,
              size: 20,
            ),
          ),
          Container(
            constraints: BoxConstraints(minWidth: 20, minHeight: 20),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: Colors.black26, width: 2),
            ),
            child: Text(
              timeJoker.toString(),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}

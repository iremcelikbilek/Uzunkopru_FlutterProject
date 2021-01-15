import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_deneme/Utils/stage1.dart';
import 'package:flutter_deneme/Utils/stage2.dart';
import 'package:flutter_deneme/Utils/stage3.dart';
import 'package:flutter_deneme/Utils/stage4.dart';
import 'package:flutter_deneme/Utils/stage5.dart';
import 'package:flutter_deneme/screens/InformationPage.dart';

class QuestionPage extends StatefulWidget {
  int level;
  QuestionPage(this.level);

  @override
  _QuestionPageState createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  List<String> bringQuestion() {
    int currentLevel = widget.level;
    List<String> data;
    if (currentLevel == 1)
      data = Stage1.Questions_Stage1;
    else if (currentLevel == 2)
      data = Stage2.Questions_Stage2;
    else if (currentLevel == 3)
      data = Stage3.Questions_Stage3;
    else if (currentLevel == 4)
      data = Stage4.Questions_Stage4;
    else if (currentLevel == 5) data = Stage5.Questions_Stage5;
    return data;
  }

  List<String> bringA() {
    int currentLevel = widget.level;
    List<String> data;
    if (currentLevel == 1)
      data = Stage1.Options_A1;
    else if (currentLevel == 2)
      data = Stage2.Options_A2;
    else if (currentLevel == 3)
      data = Stage3.Options_A3;
    else if (currentLevel == 4)
      data = Stage4.Options_A4;
    else if (currentLevel == 5) data = Stage5.Options_A5;
    return data;
  }

  List<String> bringB() {
    int currentLevel = widget.level;
    List<String> data;
    if (currentLevel == 1)
      data = Stage1.Options_B1;
    else if (currentLevel == 2)
      data = Stage2.Options_B2;
    else if (currentLevel == 3)
      data = Stage3.Options_B3;
    else if (currentLevel == 4)
      data = Stage4.Options_B4;
    else if (currentLevel == 5) data = Stage5.Options_B5;
    return data;
  }

  List<String> bringC() {
    int currentLevel = widget.level;
    List<String> data;
    if (currentLevel == 1)
      data = Stage1.Options_C1;
    else if (currentLevel == 2)
      data = Stage2.Options_C2;
    else if (currentLevel == 3)
      data = Stage3.Options_C3;
    else if (currentLevel == 4)
      data = Stage4.Options_C4;
    else if (currentLevel == 5) data = Stage5.Options_C5;
    return data;
  }

  List<String> bringD() {
    int currentLevel = widget.level;
    List<String> data;
    if (currentLevel == 1)
      data = Stage1.Options_D1;
    else if (currentLevel == 2)
      data = Stage2.Options_D2;
    else if (currentLevel == 3)
      data = Stage3.Options_D3;
    else if (currentLevel == 4)
      data = Stage4.Options_D4;
    else if (currentLevel == 5) data = Stage5.Options_D5;
    return data;
  }

  List<String> bringCorrectAnswer() {
    int currentLevel = widget.level;
    List<String> data;
    if (currentLevel == 1)
      data = Stage1.Correct_Answer1;
    else if (currentLevel == 2)
      data = Stage2.Correct_Answer2;
    else if (currentLevel == 3)
      data = Stage3.Correct_Answer3;
    else if (currentLevel == 4)
      data = Stage4.Correct_Answer4;
    else if (currentLevel == 5) data = Stage5.Correct_Answer5;
    return data;
  }

  int totalPoint = 0;
  int earnedPoint = 0;
  int totalQuestion = 10;
  int index = 0;
  int fiftyPercentJoker = 1;
  int timeJoker = 1;
  int point = 0;
  int counter = 10;
  int currentQuestion = 1;
  int timerLong = 30;
  Timer _timer;
  bool sureEkle = false;
  int totalCorrectAnswer = 0;

  void useTimeJoker() {
    if (timeJoker != 0) {
      timeJoker--;
      sureEkle = true;
      //timerLong += 30;
    }
  }



  void startTimer(bool startAgain) {
    int counter = 30;
    if (_timer != null) {
      _timer.cancel();
    }

    if(startAgain == true){
      timerLong = 0;
       _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (counter >= 0) {
            timerLong = counter;
            counter--;
            if (sureEkle == true) {
              timerLong += 30;
              counter += 30;
              sureEkle = false;
            }
          } else {
            timer.cancel();
            totalQuestion--;
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InformationPage(
                        totalQuestion,
                        earnedPoint,
                        totalPoint,
                        fiftyPercentJoker,
                        timeJoker))).then((value) {
              setState(() {
                startTimer(true);
                index++;
                currentQuestion++;
              });
            });
          }
        });
      });
    }else{
      _timer = Timer.periodic(Duration(seconds: 1), (timer) {
        setState(() {
          if (counter >= 0) {
            timerLong = counter;
            counter--;
            if (sureEkle == true) {
              timerLong += 30;
              counter += 30;
              sureEkle = false;
            }
          } else {
            timer.cancel();
            totalQuestion--;
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InformationPage(
                        totalQuestion,
                        earnedPoint,
                        totalPoint,
                        fiftyPercentJoker,
                        timeJoker))).then((value) {
              setState(() {
                index++;
                currentQuestion++;

              });
            });
          }
        });
      });
    }



  }


  @override
  void initState() {
    super.initState();
      startTimer(false);
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        Navigator.pop(context,
            [totalCorrectAnswer, totalPoint, fiftyPercentJoker, timeJoker]);
        return Future.value(false);
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/app_common_background4.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SafeArea(
              child: buildBody(context),
            )
          ],
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Card(
            elevation: 11,
            color: Colors.blue.withAlpha(170),
            child: buildHeader(context),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  buildQuestionPart(context, bringQuestion()[index]),
                  buildButton(context, bringA()[index]),
                  buildButton(context, bringB()[index]),
                  buildButton(context, bringC()[index]),
                  buildButton(context, bringD()[index]),
                ],
              ),
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
              "%",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          GestureDetector(
            onTap: (){},
            child: Container(
              constraints: BoxConstraints(minWidth: 30,minHeight: 30),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black26, width: 2),
              ),
              child: Text(
                fiftyPercentJoker.toString(),
                style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            width: 50,
            height: 50,
          ),
          Container(
              child: Text(
            "Uzunköprü",
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          )),
          SizedBox(
            width: 50,
            height: 50,
          ),
          Container(
            child: Icon(
              Icons.timer,
              color: Colors.white,
              size: 20,
            ),
          ),
          GestureDetector(
            onTap: () {
              useTimeJoker();
            },
            child: Container(
              constraints: BoxConstraints(minWidth: 30, minHeight: 30),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black26, width: 2),
              ),
              child: Text(
                timeJoker.toString(),
                style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildQuestionPart(BuildContext context, String data) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.blue.withAlpha(170),
          //border: Border.all(color: Colors.blue.withAlpha(170), width: 2),
          borderRadius: BorderRadius.circular(30),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  child: Text(
                    "   $totalPoint \nPuan",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 30,
                  child: Text(
                    timerLong.toString(),
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ),
                Container(
                  child: Text(
                    "$currentQuestion/10",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Center(
                      child: Text(
                        data,
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButton(BuildContext context, String data) {
    Color backgroundColor;

    if (data == bringCorrectAnswer()[index]) {
      backgroundColor = Colors.green;
    } else {
      backgroundColor = Colors.red;
    }

    return Expanded(
      flex: 1,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        decoration: BoxDecoration(
          color: Colors.white.withAlpha(170),
          border: Border.all(color: Colors.blue.withAlpha(170), width: 2),
          borderRadius: BorderRadius.circular(12),
        ),
        child: FlatButton(
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          highlightColor: backgroundColor,
          onPressed: () {
            currentQuestion++;
            totalQuestion--;
            if (data == bringCorrectAnswer()[index]) {
              debugPrint("Dogru cevap verdiniz");
              earnedPoint += 10;
              totalPoint += 10;
              totalCorrectAnswer++;
            } else {}
            index++;

            if (index == 10) {
              Navigator.pop(context, [
                totalCorrectAnswer,
                totalPoint,
                fiftyPercentJoker,
                timeJoker
              ]);
            }

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => InformationPage(
                        totalQuestion,
                        earnedPoint,
                        totalPoint,
                        fiftyPercentJoker,
                        timeJoker))).then((value) {
              setState(() {
                startTimer(value);
              });
            });
          },
          child: Center(
              child: Text(
            "$data",
            style: TextStyle(color: Colors.black, fontSize: 20),
          )),
        ),
      ),
    );
  }
}

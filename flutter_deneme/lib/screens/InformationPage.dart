import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InformationPage extends StatefulWidget {
  int totalQuestion;
  int earnedPoint;
  int totalPoint;
  int fiftyPercentJoker;
  int timeJoker;

  InformationPage(this.totalQuestion, this.earnedPoint, this.totalPoint,
      this.fiftyPercentJoker, this.timeJoker);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  int remainingQuestion = 0;
  int totalPoint = 0;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
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
          buildInformationPart(context),
          buildInfoJokerPart(context),
          buildButtonPart(context),
        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
          child: Text("Uzunköprü",
              style: TextStyle(color: Colors.white, fontSize: 30))),
    );
  }

  Widget buildInformationPart(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        margin: EdgeInsets.all(40),
        decoration: BoxDecoration(
          color: Colors.blue.withAlpha(170),
          //border: Border.all(color: Colors.blue.withAlpha(170), width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                child: Text(
              "Kalan Soru: ${widget.totalQuestion}",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Text(
              "Kazanılan Puan: ${widget.earnedPoint}",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            )),
            SizedBox(
              height: 20,
            ),
            Container(
                child: Text(
              "Toplam Puan: ${widget.totalPoint}",
              style: TextStyle(color: Colors.white, fontSize: 20),
              textAlign: TextAlign.center,
            )),
          ],
        ),
      ),
    );
  }

  Widget buildInfoJokerPart(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 80, vertical: 10),
        decoration: BoxDecoration(
          color: Colors.blue.withAlpha(170),
          //border: Border.all(color: Colors.blue.withAlpha(170), width: 2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                "Kalan Jokerler",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Text(
                        "%",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      Container(
                        constraints:
                            BoxConstraints(minWidth: 30, minHeight: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.black26, width: 2),
                        ),
                        child: Text(
                          "${widget.fiftyPercentJoker}",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                        size: 20,
                      ),
                      Container(
                        constraints:
                            BoxConstraints(minWidth: 30, minHeight: 30),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.rectangle,
                          border: Border.all(color: Colors.black26, width: 2),
                        ),
                        child: Text(
                          "${widget.timeJoker}",
                          style: TextStyle(color: Colors.blue, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget buildButtonPart(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: Colors.blue.shade50,
                border: Border.all(color: Colors.blue, width: 2),
                borderRadius: BorderRadius.circular(10),
              ),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/PlayGamePage");
                },
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                child: Row(
                  children: <Widget>[
                    Text(
                      "Çık ",
                      style: TextStyle(color: Colors.blue, fontSize: 20),
                    ),
                    Icon(
                      Icons.clear,
                      color: Colors.blue,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.blue.shade50,
                      border: Border.all(color: Colors.blue, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: FlatButton(
                      onPressed: () {
                        totalPoint += widget.earnedPoint;
                        Navigator.pop(context);
                      },
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      child: Row(
                        children: <Widget>[
                          Text(
                            "Sıradaki",
                            style: TextStyle(color: Colors.blue, fontSize: 20),
                          ),
                          Icon(
                            Icons.navigate_next,
                            size: 20,
                            color: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

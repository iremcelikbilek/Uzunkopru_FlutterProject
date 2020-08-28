import 'package:flutter/material.dart';

class PlayGamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _playGamePageState();
  }
}

class _playGamePageState extends State<PlayGamePage> {
  int point = 0;
  int fiftyPercentJoker = 1;
  bool stage1complete = true;
  bool stage2complete = true;
  bool stage3complete = true;
  bool stage4complete = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: buildBody(context)),
    );
  }

  Widget buildBody(BuildContext context) {
    double _progress = 100.0;

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
                              style: TextStyle(color: Colors.white, fontSize: 20),
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
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 170,
                              height: 20,
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.blueGrey,
                                //value: _progress,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () {},
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
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      (stage1complete == true)?
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Seviye 2",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 170,
                              height: 20,
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.red.shade100,
                                //value: _progress,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.red.shade100,
                              child: Text("Yarış"),
                            )
                          ],
                        ),
                      ):
                      Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Image.asset("assets/images/categoryactivity_item_lock.png",width: 50,height: 50,)),
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
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      (stage2complete == true && stage1complete == true)?
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Seviye 3",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 170,
                              height: 20,
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.orange.shade100,
                                //value: _progress,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.orange.shade100,
                              child: Text("Yarış"),
                            )
                          ],
                        ),
                      ):
                      Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Image.asset("assets/images/categoryactivity_item_lock.png",width: 50,height: 50,)),
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
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      (stage1complete == true && stage2complete == true && stage3complete == true)?
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Seviye 4",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 170,
                              height: 20,
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.purple.shade100,
                                //value: _progress,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.purple.shade100,
                              child: Text("Yarış"),
                            )
                          ],
                        ),
                      ):
                      Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Image.asset("assets/images/categoryactivity_item_lock.png",width: 50,height: 50,)),
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
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                      (stage1complete == true && stage2complete == true && stage3complete == true && stage4complete == true)?
                      Container(
                        padding: EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Seviye 5",
                              style: TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            Container(
                              width: 170,
                              height: 20,
                              child: LinearProgressIndicator(
                                backgroundColor: Colors.green.shade100,
                                //value: _progress,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                              height: 10,
                            ),
                            RaisedButton(
                              onPressed: () {},
                              color: Colors.green.shade100,
                              child: Text("Yarış"),
                            )
                          ],
                        ),
                      ):
                      Container(
                          padding: EdgeInsets.only(right: 80),
                          child: Image.asset("assets/images/categoryactivity_item_lock.png",width: 50,height: 50,)),
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        SizedBox(
          width: 10,
          height: 10,
        ),
        Container(
          child: Text(
            "Puan:",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
        Container(
          child: Text(
            point.toString(),
            style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
          ),
        ),
        SizedBox(
          width: 50,
          height: 50,
        ),
        Container(
          child: Text(
            "Seviyeler",
            style: TextStyle(
                color: Colors.red, fontSize: 30, fontStyle: FontStyle.italic),
          ),
        ),
        SizedBox(
          width: 40,
          height: 40,
        ),
        Container(
          child: Text(
            "%",
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.black26, width: 2),
          ),
          child: Text(
            fiftyPercentJoker.toString(),
            style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
          ),
        ),
        SizedBox(
          width: 20,
          height: 20,
        ),
        Container(
          child: Icon(
            Icons.timer,
            color: Colors.red,
            size: 20,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.black26, width: 2),
          ),
          child: Text(
            fiftyPercentJoker.toString(),
            style: TextStyle(color: Colors.orangeAccent, fontSize: 20),
          ),
        ),
        SizedBox(
          width: 10,
          height: 10,
        ),
      ],
    );
  }
}

/*
* ListTile(
              dense: true,
              leading: CircleAvatar(
                radius: 30,
                child: Image.asset("assets/images/categoryactivity_item_thumb_1.png",),),
              title: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text("Seviye 1",style: TextStyle(color: Colors.white,fontSize: 30),),
                  SizedBox(width: 10,height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: LinearProgressIndicator(),
                  ),
                  SizedBox(width: 10,height: 10,),
                  RaisedButton(
                    onPressed: (){},
                    color: Colors.blue.shade100,
                    child: Text("Yarış"),
                  )
                ],
              ),
            ),
* */

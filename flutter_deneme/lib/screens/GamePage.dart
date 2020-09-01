import 'package:flutter/material.dart';

class GamePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _GamePageState();
  }
}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/app_common_background4.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(child: buildGamePage(context)),
        ],
      ),
    );
  }
}

Widget buildGamePage(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(right: 5.0, left: 5.0),
    child: Column(
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.all(60.0),
            child: Image.asset("assets/images/gameactivity_header.png"),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 4,
                  child: Container(
                    margin: EdgeInsets.only(right: 50.0, left: 50.0, top: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.redAccent, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      highlightColor: Colors.redAccent,
                      child: Text("Play"),
                      onPressed: () =>
                          Navigator.pushNamed(context, "/PlayGamePage"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
          height: 50,
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.only(right: 50.0, left: 50.0),
                    decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.orangeAccent, width: 2),
                        borderRadius: BorderRadius.circular(12)),
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      highlightColor: Colors.orangeAccent,
                      child: Text("Profile"),
                      onPressed: () =>
                          Navigator.pushNamed(context, "/ProfilePage"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 10,
          height: 50,
        ),
        Expanded(
          flex: 1,
          child: Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin:
                        EdgeInsets.only(left: 50.0, right: 50.0, bottom: 10.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: FlatButton(
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      highlightColor: Colors.green,
                      child: Text("Help"),
                      onPressed: () =>
                          Navigator.pushNamed(context, "/HelpPage"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 80,
          height: 80,
        ),
        Divider(
          color: Colors.black12,
          thickness: 3,
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.transparent,
            child: Image.asset("assets/images/mainactivity_footer.png"),
          ),
        ),
      ],
    ),
  );
}

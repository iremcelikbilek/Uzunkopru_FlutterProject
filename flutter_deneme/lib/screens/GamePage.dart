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
      body: buildGamePage(context),
    );
  }
}

Widget buildGamePage(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(right: 5.0, left: 5.0),
    decoration: BoxDecoration(
      //color: const Color(0xff7c94b6),
      image: const DecorationImage(
        image: NetworkImage(
            'https://www.desktopbackground.org/download/768x1280/2012/09/29/459970_old-paper-texture-mobile-wallpapers-8830_1080x1920_h.jpg'),
        fit: BoxFit.cover,
      ),
    ),
    child: Column(
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(60.0),
          child: Image.asset("assets/images/gameactivity_header.png"),
        ),
        Container(
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 50.0, left: 50.0, top: 10.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.redAccent, width: 2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: FlatButton(
                        highlightColor: Colors.redAccent,
                        child: Text("Play"),
                        onPressed: () =>
                            Navigator.pushNamed(context, "/PlayGamePage"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
                height: 50,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 50.0, left: 50.0),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.orangeAccent, width: 2),
                          borderRadius: BorderRadius.circular(12)),
                      child: FlatButton(
                        highlightColor: Colors.orangeAccent,
                        child: Text("Profile"),
                        onPressed: () => Navigator.pushNamed(context, "/ProfilePage"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 10,
                height: 50,
              ),

               Row(
                 children: <Widget>[
                   Expanded(
                     child: Container(
                        margin: EdgeInsets.only(left: 50.0, right: 50.0, bottom: 10.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green, width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  FlatButton(
                            highlightColor: Colors.green,
                              child: Text("Help"),
                              onPressed: () => Navigator.pushNamed(context, "/HelpPage"),
                            ),
                      ),
                   ),
                 ],
               ),

            ],
          ),
        ),
        SizedBox(width: 80,height: 80,),
        buildFooter(context),
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



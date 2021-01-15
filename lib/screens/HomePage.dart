import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
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
          SafeArea(child: buildBody(context)),
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
            flex: 4,
            child: Container(
                margin: EdgeInsets.only(right: 5.0, left: 5.0, bottom: 5.0),
                color: Colors.transparent,
                child: Image.asset("assets/images/main_activity_header.png")),
          ),
          Expanded(
            flex: 2,
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, "/GamePage"),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black26, width: 2),
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.symmetric(vertical: 10.0),
                //color: Colors.transparent,
                child: Image.asset("assets/images/mainactivity_btngame.png"),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, "/NotificationPage"),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.only(right: 5.0, left: 5.0),
                        child: Image.asset(
                            "assets/images/mainactivity_btnnotification.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/AboutPage"),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.only(right: 5.0, left: 5.0),
                        child: Image.asset(
                            "assets/images/mainactivity_btnabout.png"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () => Navigator.pushNamed(context, "/ScorePage"),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 2),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        margin: EdgeInsets.all(5.0),
                        padding: EdgeInsets.only(right: 5.0, left: 5.0),
                        child: Image.asset(
                            "assets/images/mainactivity_btngivescore.png"),
                      ),
                    ),
                  ),
                ],
              ),
            ),
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
}

/*
 * NetworkImage(
     'https://www.desktopbackground.org/download/768x1280/2012/09/29/459970_old-paper-texture-mobile-wallpapers-8830_1080x1920_h.jpg'),
 * */

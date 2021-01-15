import 'package:flutter/material.dart';
import 'package:flutter_deneme/Utils/info.dart';

class NotificationDetail extends StatefulWidget {
  int index;
  NotificationDetail(this.index);

  @override
  _NotificationDetailState createState() => _NotificationDetailState();
}

class _NotificationDetailState extends State<NotificationDetail> {
  String date;
  String title;
  String info;
  String line1;
  String subtitle;

  @override
  void initState() {
    date = Info.Date;
    title = Info.Title[widget.index];
    line1 = Info.Line1[widget.index];
    info = Info.infos[widget.index];
    subtitle = Info.Subtitle;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: buildBody(context),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Container(
              child:
                  Image.asset("assets/images/notification_detail_header.png"),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(title,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),),
                        Text(date,style: TextStyle(color: Colors.black,fontSize: 18),),
                      ],
                    ),
                  ),


                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                        child: Column(
                          children: <Widget>[
                            Text(line1,style: TextStyle(fontSize: 15),),
                            Text(info,style: TextStyle(fontSize: 15),),
                          ],
                        ),
                      ),
                    ),
                  ),

                  Text(subtitle,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ],
              ),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 3,
          ),
          Image.asset("assets/images/mainactivity_footer.png"),
        ],
      ),
    );
  }
}

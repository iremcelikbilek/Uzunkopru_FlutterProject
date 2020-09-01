import 'package:flutter/material.dart';
import 'package:flutter_deneme/Utils/info.dart';

class NotificationPage extends StatelessWidget {
  List<String> title = Info.Title;
  String date = Info.Date;
  List<String> line1 = Info.Line1;

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

  Widget createList() {
    return ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return buildCard(context, index);
        },
        itemCount: title.length);
  }

  Widget buildCard(BuildContext context, int index) {
    String delegate1 = title[index];
    String delegate2 = line1[index];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Card(
        color: Colors.blueGrey.withAlpha(180),
        elevation: 5,
        child: ListTile(
          onTap: () =>
              Navigator.pushNamed(context, "/NotificationDetail/$index"),
          dense: true,
          leading: Icon(Icons.date_range),
          title: Center(
              child: Text(
            date,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
          subtitle: Column(
            children: <Widget>[
              Text(
                delegate1,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontStyle: FontStyle.italic),
                textAlign: TextAlign.center,
              ),
              Text(delegate2,
                  style: TextStyle(color: Colors.white, fontSize: 15)),
            ],
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Image.asset("assets/images/notification_header.png"),
          ),
          Expanded(
            child: Container(child: createList()),
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

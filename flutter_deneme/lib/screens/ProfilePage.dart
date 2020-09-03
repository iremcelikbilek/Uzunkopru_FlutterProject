import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }

}

class _ProfilePageState extends State<ProfilePage> {

  String level = "Seviye 1";
  int totalPoint = 0 ;
  int correct = 0;
  int wrong = 0;

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
          SafeArea(child: buildProfilePage(context)),
        ],
      ),
    );
  }

  Widget buildProfilePage(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Card(
            elevation: 11,
            color: Colors.white.withAlpha(170),
            child: buildHeader(context),
          ),
          CircleAvatar(
            backgroundColor: Colors.transparent,
            radius: 100,
            child: Image.asset("assets/images/profil_icon.png"),
          ),
          Center(
            child: Text("Misafir Kullanıcı",
            style: TextStyle(
              color: Colors.grey[700].withAlpha(170),
              fontSize: 25,
            ),
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50,vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.orange,
              ),
              child: Center(
                child: Text(level,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 3,
              child: buildRow(context)
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Image.asset("assets/images/profileactivity_facebook_login.png"),
            ),
          ),
          Divider(
            color: Colors.black12,
            thickness: 3,
          ),
          Expanded(
            child: Image.asset("assets/images/mainactivity_footer.png"),
          ),

        ],
      ),
    );
  }

  Widget buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Center(
          child: Text("Profil",
              style: TextStyle(color: Colors.red, fontSize: 30))),
    );
  }

  Widget buildRow(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black26, width: 2),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text("Toplam Puan",style: TextStyle(color: Colors.grey[700],fontSize: 17),),
                  Stack(
                    children: <Widget>[
                      Center(child: Icon(Icons.star,size: 100,color: Colors.yellow,)),
                      Padding(
                        padding: const EdgeInsets.all(40),
                        child: Center(child: Text(totalPoint.toString(),style: TextStyle(color: Colors.grey[700],fontSize: 25),)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(width: 10,),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black26, width: 2),
              ),
              child: Column(
                children: <Widget>[
                  Text("Doğru - Yanlış",style: TextStyle(color: Colors.grey[700],fontSize: 17),),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Icon(Icons.done,color: Colors.green,size: 40,),
                      Icon(Icons.clear,color: Colors.red,size: 40,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Center(child: Text(correct.toString(),style: TextStyle(color: Colors.grey[700],fontSize: 20),)),
                      Center(child: Text(wrong.toString(),style: TextStyle(color: Colors.grey[700],fontSize: 20),)),
                    ],
                  ),
                ],
              ),
            ),
          ),

          SizedBox(width: 10,),

          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                border: Border.all(color: Colors.black26, width: 2),
              ),
              child: Column(
                children: <Widget>[
                  Text("Oyunu Sıfırla",style: TextStyle(color: Colors.grey[700],fontSize: 17),),
                  Expanded(child: Icon(Icons.autorenew,color: Colors.grey[700],size: 70,)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
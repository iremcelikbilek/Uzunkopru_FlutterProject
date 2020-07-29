import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _profilePageState();
  }

}

class _profilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Page"),
      ),
    );
  }

}
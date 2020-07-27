import 'package:flutter/material.dart';

class GamePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _GamePageState();
  }

}

class _GamePageState extends State<GamePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Page"),
      ),
    );
  }
}
import 'package:flutter/material.dart';

class ScorePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return _ScorePageState();
  }

}

class _ScorePageState extends State<ScorePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Score Page"),
      ),
    );
  }
}
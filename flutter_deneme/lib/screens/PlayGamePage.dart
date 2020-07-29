import 'package:flutter/material.dart';

class PlayGamePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _playGamePageState();
  }

}

class _playGamePageState extends State<PlayGamePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Play Game Page"),
     ),
   );
  }

}
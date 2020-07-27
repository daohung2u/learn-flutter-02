import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.blue,
        ),
        backgroundColor: Colors.blue.shade100,
        body: DiceHome(),
      ),
    ),
  );
}

class DiceHome extends StatefulWidget {
  @override
  _DiceHomeState createState() => _DiceHomeState();
}

class _DiceHomeState extends State<DiceHome> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  void changeDiceFace() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            child: Image.asset('images/dice$leftDiceNumber.png'),
            onPressed: changeDiceFace,
          )),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$rightDiceNumber.png'),
              onPressed: changeDiceFace,
            ),
          )
        ],
      ),
    );
  }
}

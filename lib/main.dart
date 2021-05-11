import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int rightDiceNumber = 1, leftDiceNumber = 1;
  void meet() {
    setState(() {
      rightDiceNumber = Random().nextInt(6) + 1;
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: Center(child: Text('Dicee')),
            backgroundColor: Colors.orangeAccent,
            shadowColor: Colors.black),
        backgroundColor: Colors.orange,
        body: Center(
          child: Row(
            children: [
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                  onPressed: () {
                    meet();
                  },
                ),
              ),
              Expanded(
                // ignore: deprecated_member_use
                child: FlatButton(
                  child: Image.asset('images/dice$rightDiceNumber.png'),
                  onPressed: () {
                    meet();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

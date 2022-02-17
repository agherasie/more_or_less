import 'dart:math';

import 'package:flutter/material.dart';
import "./input.dart";
import "./win.dart";

bool gameWon = false;

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void _readNumber(int input) {
    setState(() {
      resultText = decideResult(input, number);
      guess = input;
      if (resultText == "You win !") gameWon = true;
    });
  }

  void _restart() {
    setState(() {
      gameWon = false;
      Random random = new Random();
      number = 1 + random.nextInt(100 - 1);
      resultText = "Choose a number";
      guess = -1;
    });
  }

  int number = 42;
  String resultText = "Choose a number";
  int guess = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("More or less"),
        ),
        body: gameWon == false
            ? Input(_readNumber, resultText, guess)
            : WinScreen(_restart),
      ),
    );
  }
}

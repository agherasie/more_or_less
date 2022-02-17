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

  Color _colorHint() {
    int difference = guess - number;
    difference = difference.abs();
    if (guess == -1 || guess == number) return Colors.white;
    if (difference < 5) return Colors.deepOrange[900] as Color;
    if (difference < 10) return Colors.deepOrange[500] as Color;
    if (difference < 20) return Colors.deepOrange[300] as Color;
    if (difference < 40) return Colors.indigoAccent[200] as Color;
    if (difference > 40) return Colors.indigoAccent[100] as Color;
    return Colors.white;
  }

  int number = 42;
  String resultText = "Choose a number";
  int guess = -1;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: _colorHint()),
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

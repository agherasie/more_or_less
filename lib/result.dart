import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String text;

  Result(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        text,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}

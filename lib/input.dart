import "package:flutter/material.dart";
import "./result.dart";
import "./input_field.dart";

String decideResult(int input, int number) {
  if (number > input) return "More";
  if (number < input) return "Less";
  return "You win !";
}

class Input extends StatelessWidget {
  final Function readNumber;
  final String resultText;
  final int guess;

  Input(this.readNumber, this.resultText, this.guess);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Result(resultText),
        Container(
          margin: const EdgeInsets.all(10.0),
          width: 400.0,
          child: InputField(readNumber),
        ),
        Result(guess.toString()),
      ],
    );
  }
}

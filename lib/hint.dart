import "package:flutter/material.dart";

class Hint extends StatelessWidget {
  final int guess;
  final String textGuess = "Guess ?";
  final String textOutOfRange = "Out of range !";

  Hint(this.guess);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: guess >= 0 && guess <= 100
          ? Text(guess.toString())
          : guess == -1
              ? Text(textGuess)
              : Text(textOutOfRange),
    );
  }
}

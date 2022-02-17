import "package:flutter/material.dart";
import "./result.dart";

class WinScreen extends StatelessWidget {
  final Function restart;

  WinScreen(this.restart);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Result("You won, you're awesome !"),
        ElevatedButton(
          onPressed: () => restart(),
          child: const Text("Restart"),
        )
      ],
    );
  }
}

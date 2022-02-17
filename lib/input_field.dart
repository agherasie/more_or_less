import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  final myController = TextEditingController();

  Function readNumber;

  InputField(this.readNumber);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onSubmitted: (text) => readNumber(int.parse(myController.text)),
      controller: myController,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black),
        ),
        label: Center(
          child: Text(
            "Input a number between 1 and 100",
          ),
        ),
      ),
    );
  }
}

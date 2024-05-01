import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text, {super.key});

  // this variable only exists to accept value from the text argument in the constructor
  // assigning final to it ensures that it is not reassigned a value
  final String text;

  @override
  Widget build(context) {
    return (Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    ));
  }
}

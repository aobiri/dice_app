import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
            Color.fromARGB(174, 131, 0, 87),
            Color.fromARGB(173, 216, 140, 191),
            Color.fromARGB(173, 185, 88, 152)),
      ),
    ),
  );
}

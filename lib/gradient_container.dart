import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});

  // const GradientContainer.bgColor({super.key})
  //     : color1 = const Color.fromARGB(174, 131, 0, 87),
  //       color2 = const Color.fromARGB(173, 216, 140, 191),
  //       color3 = const Color.fromARGB(173, 185, 88, 152);

  static const endAlignment = Alignment.bottomRight;
  static const startAlignment = Alignment.topLeft;

  final Color color1;
  final Color color2;
  final Color color3;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2, color3],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(
        child: DiceRoller(),
      ),
    );
  }
}

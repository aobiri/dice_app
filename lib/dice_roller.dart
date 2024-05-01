import 'dart:math';

import 'package:flutter/material.dart';

// declare random here, instead of inside the setState,
// so it does not get called anytime setState is called
// this is to help optimize memory
final randomize = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller(
      {super.key}); // takes key and passes it to the super class - StatefulWidget

  @override
  State<DiceRoller> createState() {
    // A generic type method - takes a generic object
    return _DiceRollerState(); // calls default constructor of _DiceRollerState
  }
}

// The "_"  means that this class is private and would only be used in this file
class _DiceRollerState extends State<DiceRoller> {
  var diceImage = 'assets/images/dice-2.png';
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      //seState is passed an anonymous function

      // Generate random integers between 1 and 6. the number passed in the parenthesis determines how many integers to be generated
      // nextInt starts from 0. Add 1 to start from 1
      currentDiceRoll = randomize.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png', // how to pass a variable in a string
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 30,
            ),
            //padding: const EdgeInsets.only(top: 60),
          ),
          child: const Text('Roll the dice'),
        )
      ],
    );
  }
}

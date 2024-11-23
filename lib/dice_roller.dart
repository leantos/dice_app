import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var diceFace = 'assets/images/dice-2.png';
  var diceRoll = 2;

  void rollDice() {
    setState(() {
      diceRoll = Random().nextInt(6) + 1; //Random Value from 1 to 6
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          diceFace = 'assets/images/dice-$diceRoll.png',
          width: 200,
        ),
        const SizedBox(height: 50),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.yellow,
            textStyle: const TextStyle(
              fontSize: 20,
            ),
          ),
          child: const Text('Roll the Dice!'),
        )
      ],
    );
  }
}

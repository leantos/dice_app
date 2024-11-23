import 'package:flutter/material.dart';
import 'package:dice_app/dice_roller.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 27, 1, 122),
              Color.fromARGB(255, 163, 11, 0),
            ],
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
          ),
        ),
        child: const Center(
          child: DiceRoller(),
        ));
  }
}

import 'dart:math';
import 'package:flutter/material.dart';
import 'dice_roller.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key, required this.colors});

  final List<Color> colors;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  String activeDiceImage = 'assets/images/dice4.png';

  void rollDice() {
    final randomDiceNumber = Random().nextInt(6) + 1;
    setState(() {
      activeDiceImage = 'assets/images/dice$randomDiceNumber.png';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: widget.colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: DiceRoller(
          activeDiceImage: activeDiceImage,
          rollDice: rollDice,
        ),
      ),
    );
  }
}

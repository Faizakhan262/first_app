import 'package:flutter/material.dart';

class DiceRoller extends StatelessWidget {
  const DiceRoller({
    super.key,
    required this.activeDiceImage,
    required this.rollDice,
  });

  final String activeDiceImage;
  final VoidCallback rollDice;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          activeDiceImage,
          width: 200,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            padding: const EdgeInsets.all(16),
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}

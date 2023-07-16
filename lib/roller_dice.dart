import 'dart:math';

import 'package:flutter/material.dart';

final randomizer = Random(); // declared to use the same reference always rather than creating new instance on every click

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});
  @override
  State<RollerDice> createState() {
    return _RollerDiceState();
  }
}

class _RollerDiceState extends State<RollerDice> {
  var currentDiceNum = 3;
  void rollDice() {
    setState(() {
      currentDiceNum = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceNum.png',
          width: 200,
        ),
        const SizedBox(
          height: 20, // for margin-top
        ),
        TextButton(
          style: TextButton.styleFrom(
            // padding: const EdgeInsetsDirectional.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          onPressed: rollDice,
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }
}

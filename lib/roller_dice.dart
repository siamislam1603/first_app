import 'package:flutter/material.dart';

class RollerDice extends StatefulWidget {
  const RollerDice({super.key});
  @override
  State<RollerDice> createState() {
    return _RollerDiceState();
  }
}

class _RollerDiceState extends State<RollerDice> {
  var activeDiceImg = 'assets/images/dice-3.png';
  void rollDice() {
    setState(() {
      activeDiceImg = 'assets/images/dice-6.png';
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          activeDiceImg,
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

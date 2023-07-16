import 'package:flutter/material.dart';

var gradientStartAlignment = Alignment.topLeft;
var gradientEndAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  // const GradientContainer({key}): super(key: key);
  // Inheritance in dart, key must be passed either of the ways given above which is required.
  final List<Color> colors;

  void rollDice() {}
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: gradientStartAlignment,
          end: gradientEndAlignment,
        ),
      ),
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dice-3.png',
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
      )),
    );
  }
}

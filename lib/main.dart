import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(
          gradientColors: [
            Color.fromRGBO(106, 27, 154, 1),
            Color.fromRGBO(171, 71, 188, 1),
          ],
        ),
      ),
    ),
  );
}

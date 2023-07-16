import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

var gradientStartAlignment = Alignment.topLeft;
var gradientEndAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, required this.colors});
  // const GradientContainer({key}): super(key: key);
  // Inheritance in dart, key must be passed either of the ways given above which is required.
  final List<Color> colors;
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
      child: const Center(
        child: StyledTextWidget(text: 'Dynamic Text to custom Text Widget'),
      ),
    );
  }
}

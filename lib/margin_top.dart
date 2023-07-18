import 'package:flutter/material.dart';

class MarginTop extends StatelessWidget {
  const MarginTop(this.spacing, {super.key});
  final double spacing;
  @override
  Widget build(context) {
    return SizedBox(height: spacing);
  }
}

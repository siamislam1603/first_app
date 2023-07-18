import 'package:first_app/screen_switcher.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: ScreenSwitcher(
          gradientColors: [
            Color.fromRGBO(73, 7, 114, 1),
            Color.fromRGBO(73, 7, 114, .8),
          ],
        ),
      ),
    ),
  );
}

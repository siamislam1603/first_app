import 'package:flutter/material.dart';

class OptionSelect extends StatelessWidget {
  const OptionSelect(this.handleOnOptionClick, this.option, {super.key});
  final void Function(dynamic) handleOnOptionClick;
  final MapEntry<int, String> option;
  @override
  Widget build(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: FilledButton(
        onPressed: () {
          handleOnOptionClick(option.key);
        },
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 54, 7, 134),
          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
          textStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        child: Text(
          option.value,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}

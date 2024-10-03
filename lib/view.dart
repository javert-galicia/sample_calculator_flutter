import 'package:flutter/material.dart';

class ViewButton extends StatelessWidget {
  const ViewButton({super.key, required this.text, required this.mainFunction});

  final String text;
  final void Function() mainFunction;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: mainFunction,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blueGrey.shade600,
        foregroundColor: Colors.white,
        minimumSize: const Size.square(70),
      ),
      child: Text(text),
    );
  }
}

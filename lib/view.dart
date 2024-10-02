import 'package:flutter/material.dart';

class ViewButton extends StatelessWidget {
  const ViewButton({super.key, required this.text, required this.mainFunction});
  
  final String text;
  final void Function() mainFunction;
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
              onPressed: mainFunction,
              child: Text(text),
            );
  }
}
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
      child: Text(text, style: const TextStyle(fontSize: 25),),
    );
  }
}

class ViewCount extends StatelessWidget {
  const ViewCount({super.key, required this.valorCurrent});
  final String valorCurrent;
  @override
  Widget build(BuildContext context) {
    return Container(
          alignment: Alignment.topRight,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.all(10.0),
          height: 70,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blueGrey.shade600
          ),
          child: Text(
            valorCurrent,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 40,
            ),
          ),
        );
  }
}

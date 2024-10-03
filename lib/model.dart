import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_calculator_flutter/view.dart';
import 'package:sample_calculator_flutter/controller.dart';

class Model extends StatelessWidget {
  const Model({super.key});

  @override
  Widget build(BuildContext context) {
    var calculator = context.watch<Keys>();
    var valor = calculator.current;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(valor),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ViewButton(text: '7', mainFunction: calculator.seven),
            ViewButton(text: '8', mainFunction: calculator.eight),
            ViewButton(text: '9', mainFunction: calculator.nine),
            ViewButton(text: '+', mainFunction: calculator.plus),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ViewButton(text: '4', mainFunction: calculator.four),
            ViewButton(text: '5', mainFunction: calculator.five),
            ViewButton(text: '6', mainFunction: calculator.six),
            ViewButton(text: '-', mainFunction: calculator.rest),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ViewButton(text: '1', mainFunction: calculator.one),
            ViewButton(text: '2', mainFunction: calculator.two),
            ViewButton(text: '3', mainFunction: calculator.three),
            ViewButton(text: 'x', mainFunction: calculator.multiply),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ViewButton(text: 'C', mainFunction: calculator.clear),
            ViewButton(text: '0', mainFunction: calculator.zero),
            ViewButton(text: '=', mainFunction: calculator.equal),
            ViewButton(text: '/', mainFunction: calculator.divided),
          ],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_calculator_flutter/calculator.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    var calculator = context.watch<Calculator>();
    var valor = calculator.current;
    var solution = calculator.result;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //const SizedBox(height: 100,),
        Text(valor),
        Text(solution.toString()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: calculator.seven, child: const Text('7')),
            ElevatedButton(onPressed: calculator.eight, child: const Text('8')),
            ElevatedButton(onPressed: calculator.nine, child: const Text('9')),
            ElevatedButton(onPressed: calculator.plus, child: const Text('+')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: calculator.four, child: const Text('4')),
            ElevatedButton(onPressed: calculator.five, child: const Text('5')),
            ElevatedButton(onPressed: calculator.six, child: const Text('6')),
            ElevatedButton(onPressed: calculator.rest, child: const Text('-')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: calculator.one, child: const Text('1')),
            ElevatedButton(onPressed: calculator.two, child: const Text('2')),
            ElevatedButton(onPressed: calculator.three, child: const Text('3')),
            ElevatedButton(onPressed: calculator.multiply, child: const Text('*')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('C')),
            ElevatedButton(onPressed: calculator.zero, child: const Text('0')),
            ElevatedButton(onPressed: calculator.equal, child: const Text('=')),
            ElevatedButton(onPressed: () {/**/}, child: const Text('/')),
          ],
        ),
      ],
    );
  }
}

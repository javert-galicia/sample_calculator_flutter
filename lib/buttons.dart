import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sample_calculator_flutter/calculator.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    var calculator = context.watch<Calculator>();
    var valor = calculator.current;
    //var solution = calculator.result;

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        //const SizedBox(height: 100,),
        Text(valor),
        //Text(solution.toString()),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //ButtonView(calc: calculator.seven,character: '7',),
            ElevatedButton(
              onPressed: calculator.seven,
              style: ButtonView(),
              child: const Text('7'),
            ),
            ElevatedButton(onPressed: calculator.eight, style: ButtonView(), child: const Text('8')),
            ElevatedButton(onPressed: calculator.nine, style: ButtonView(), child: const Text('9')),
            ElevatedButton(onPressed: calculator.plus, style: ButtonView(), child: const Text('+')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: calculator.four, style: ButtonView(), child: const Text('4')),
            ElevatedButton(onPressed: calculator.five, style: ButtonView(), child: const Text('5')),
            ElevatedButton(onPressed: calculator.six, style: ButtonView(), child: const Text('6')),
            ElevatedButton(onPressed: calculator.rest, style: ButtonView(), child: const Text('-')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: calculator.one, style: ButtonView(), child: const Text('1')),
            ElevatedButton(onPressed: calculator.two, style: ButtonView(), child: const Text('2')),
            ElevatedButton(onPressed: calculator.three, style: ButtonView(), child: const Text('3')),
            ElevatedButton(
                onPressed: calculator.multiply, style: ButtonView(), child: const Text('*')),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: calculator.clear, style: ButtonView(), child: const Text('C')),
            ElevatedButton(onPressed: calculator.zero, style: ButtonView(), child: const Text('0')),
            ElevatedButton(onPressed: calculator.equal, style: ButtonView(), child: const Text('=')),
            ElevatedButton(
                onPressed: calculator.divided, style: ButtonView(), child: const Text('/')),
          ],
        ),
      ],
    );
  }

  // ignore: non_constant_identifier_names
  ButtonStyle ButtonView() {
    return const ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(Colors.blue));
  }
}

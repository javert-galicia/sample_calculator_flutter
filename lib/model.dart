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
    const AboutDialog(applicationName: 'djfksdjf',);
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ViewCount(valorCurrent: valor),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ViewButton(text: '(', mainFunction: calculator.parent1),
            ViewButton(text: ')', mainFunction: calculator.parent2),
            ViewButton(text: '.', mainFunction: calculator.point),
            IconButton(onPressed: calculator.remove, icon: const Icon(Icons.backspace), style: IconButton.styleFrom(
        backgroundColor: const Color.fromRGBO(114, 185, 223, 1),
        foregroundColor: Colors.white,
        minimumSize: const Size.square(65),
      ),),
          ],
        ),
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
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Align(alignment: Alignment.bottomRight,
            child: TextButton(onPressed: (){ 
                showDialog(context: context, builder: (context) => const AboutDialog(applicationVersion: '1.0' ,applicationName: 'Sample Calculator Flutter',applicationLegalese: 'License GPL-3.0',));
              },
              child: const Text('jgalicia.com', style: TextStyle(fontSize: 10,color: Colors.white),),)
            /* ElevatedButton(
              onPressed: 
              child: const Text('about'),
            ),*/
            
            //
            ),
        ),
      ],
    );
  }
}

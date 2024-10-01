import 'package:flutter/material.dart';
import 'package:sample_calculator_flutter/buttons.dart';
import 'package:provider/provider.dart';
import 'package:sample_calculator_flutter/calculator.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(
      create: (context) => Calculator(),
      child: const MaterialApp(
          home: Scaffold(
              body: Buttons(),
            ),
        ),
    );
  }
}

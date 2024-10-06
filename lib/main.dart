import 'package:flutter/material.dart';
import 'package:sample_calculator_flutter/model.dart';
import 'package:provider/provider.dart';
import 'package:sample_calculator_flutter/controller.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Keys(),
      child: const MaterialApp(
        home: Scaffold(
          backgroundColor: Color.fromRGBO(94, 116, 167, 1),
          body: Model(),
        ),
      ),
    );
  }
}

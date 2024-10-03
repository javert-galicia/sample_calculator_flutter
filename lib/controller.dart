import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Keys extends ChangeNotifier {
  var current = '0';

  void clear() {
    current = '0';
    notifyListeners();
  }

  void zero() {
    if (current != '0') {
      current += '0';
    } else {
      current = '0';
    }
    notifyListeners();
  }

  void one() {
    if (current != '0') {
      current += '1';
    } else {
      current = '1';
    }
    notifyListeners();
  }

  void two() {
    if (current != '0') {
      current += '2';
    } else {
      current = '2';
    }
    notifyListeners();
  }

  void three() {
    if (current != '0') {
      current += '3';
    } else {
      current = '3';
    }
    notifyListeners();
  }

  void four() {
    if (current != '0') {
      current += '4';
    } else {
      current = '4';
    }
    notifyListeners();
  }

  void five() {
    if (current != '0') {
      current += '5';
    } else {
      current = '5';
    }
    notifyListeners();
  }

  void six() {
    if (current != '0') {
      current += '6';
    } else {
      current = '6';
    }
    notifyListeners();
  }

  void seven() {
    if (current != '0') {
      current += '7';
    } else {
      current = '7';
    }
    notifyListeners();
  }

  void eight() {
    if (current != '0') {
      current += '8';
    } else {
      current = '8';
    }
    notifyListeners();
  }

  void nine() {
    if (current != '0') {
      current += '9';
    } else {
      current = '9';
    }
    notifyListeners();
  }

  void plus() {
    current += '+';
    notifyListeners();
  }

  void multiply() {
    current += '*';
    notifyListeners();
  }

  void rest() {
    current += '-';
    notifyListeners();
  }

  void divided() {
    current += '/';
    notifyListeners();
  }

  void equal() {
    double result = evaluateExpression(current);
    current = '$result';
    notifyListeners();
  }

  double evaluateExpression(String expression) {
    Parser parser = Parser();
    Expression exp = parser.parse(expression);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  }
}

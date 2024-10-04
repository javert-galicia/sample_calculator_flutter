import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class Keys extends ChangeNotifier {
  var current = '0';
  bool isSymbol = false;

  void clear() {
    current = '0';
    isSymbol=false;
    notifyListeners();
  }

  void zero() {
    if (current != '0') {
      current += '0';
    } else {
      current = '0';
    }
    isSymbol=false;
    notifyListeners();
  }

  void one() {
    if (current != '0') {
      current += '1';
    } else {
      current = '1';
    }
    isSymbol=false;
    notifyListeners();
  }

  void two() {
    if (current != '0') {
      current += '2';
    } else {
      current = '2';
    }
    isSymbol=false;
    notifyListeners();
  }

  void three() {
    if (current != '0') {
      current += '3';
    } else {
      current = '3';
    }
    isSymbol=false;
    notifyListeners();
  }

  void four() {
    if (current != '0') {
      current += '4';
    } else {
      current = '4';
    }
    isSymbol=false;
    notifyListeners();
  }

  void five() {
    if (current != '0') {
      current += '5';
    } else {
      current = '5';
    }
    isSymbol=false;
    notifyListeners();
  }

  void six() {
    if (current != '0') {
      current += '6';
    } else {
      current = '6';
    }
    isSymbol=false;
    notifyListeners();
  }

  void seven() {
    if (current != '0') {
      current += '7';
    } else {
      current = '7';
    }
    isSymbol=false;
    notifyListeners();
  }

  void eight() {
    if (current != '0') {
      current += '8';
    } else {
      current = '8';
    }
    isSymbol=false;
    notifyListeners();
  }

  void nine() {
    if (current != '0') {
      current += '9';
    } else {
      current = '9';
    }
    isSymbol=false;
    notifyListeners();
  }

  void plus() {
    if(isSymbol!=true){
      current += '+';
      isSymbol=true;
    }
    notifyListeners();
  }

  void multiply() {
    if(isSymbol!=true){
      current += '*';
      isSymbol=true;
    }
    notifyListeners();
  }

  void rest() {
    current += '-';
    notifyListeners();
  }

  void divided() {
    if(isSymbol!=true){
      current += '/';
      isSymbol=true;
    }
    notifyListeners();
  }
  void parent1() {
    if (current != '0') {
      current += '(';
    } else {
      current = '(';
    }
    notifyListeners();
  }
  void parent2() {
   if (current != '0') {
      current += ')';
    } else {
      current = ')';
    }
    notifyListeners();
  }
  void point() {
    current += '.';
    notifyListeners();
  }
  void remove() {
    if (current.isNotEmpty && current.length>1) {
      current = current.substring(0, current.length - 1);
    }
    notifyListeners();
  }
  void equal() {
    try{
    double result = evaluateExpression(current);
    current = '$result';
    }
    catch(ex){
      current = "Bad expression. Push Clear.";
    }
    notifyListeners();
  }

  double evaluateExpression(String expression) {
    Parser parser = Parser();
    Expression exp = parser.parse(expression);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  }
}

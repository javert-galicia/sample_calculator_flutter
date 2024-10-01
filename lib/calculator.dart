import 'package:flutter/material.dart';

class Calculator extends ChangeNotifier{
  var current = 'Oprima un boton.';
  void zero(){
    current='0';
    notifyListeners();
  }
  void one(){
    current='1';
    notifyListeners();
  }
  void two(){
    current='2';
    notifyListeners();
  }
  void three(){
    current='3';
    notifyListeners();
  }
  void four(){
    current='4';
    notifyListeners();
  }
  void five(){
    current='5';
    notifyListeners();
  }
  void six(){
    current='6';
    notifyListeners();
  }
  void seven(){
    current='7';
    notifyListeners();
  }
  void eight(){
    current='8';
    notifyListeners();
  }
  void nine(){
    current='9';
    notifyListeners();
  }
}
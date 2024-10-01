import 'package:flutter/material.dart';

class Calculator extends ChangeNotifier{
  var current = '';
  var result=0;
  var cnumber='';
  var excess='';
  void zero(){
    if(current!=''&&cnumber!=''){
    current+='0';
    cnumber+='0';
    notifyListeners();
    }
  }
  void one(){
    current+='1';
    cnumber+='1';
    notifyListeners();
  }
  void two(){
    current+='2';
    cnumber+='2';
    notifyListeners();
  }
  void three(){
    current+='3';
    cnumber+='3';
    notifyListeners();
  }
  void four(){
    current+='4';
    cnumber+='4';
    notifyListeners();
  }
  void five(){
    current+='5';
    cnumber+='5';
    notifyListeners();
  }
  void six(){
    current+='6';
    cnumber+='6';
    notifyListeners();
  }
  void seven(){
    current+='7';
    cnumber+='7';
    notifyListeners();
  }
  void eight(){
    current+='8';
    cnumber+='8';
    notifyListeners();
  }
  void nine(){
    current+='9';
    cnumber+='9';
    notifyListeners();
  }
  void plus(){
    var myInt = int.parse(cnumber);
    result+=myInt;
    cnumber='';
    current+='+';
    excess='+';
    notifyListeners();
  }
  void rest(){
    var myInt = int.parse(cnumber);
    if(result==0) {
      result+=myInt;
    } else{
    result-=myInt;
    }
    cnumber='';
    current+='-';
    excess='-';
    notifyListeners();
    
  }
  void equal(){
    if(excess=='+'){
     var myInt = int.parse(cnumber);
     result+=myInt;
     cnumber=result.toString();
     excess='';
    }
    if(excess=='-'){
     var myInt = int.parse(cnumber);
     result-=myInt;
     cnumber=result.toString();
     excess='';
    }
    current=result.toString();
    result=0;
    notifyListeners();
  }
}
import 'package:flutter/material.dart';

class Calculator extends ChangeNotifier{
  var current = '';
  var result=0;
  var cnumber='';
  var excess='';
  var start=true;
  var resultd =0.0;
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
  void multiply(){
    var myInt = int.parse(cnumber);
    if(start==true){
      result=1*myInt;
      start=false;
    }
    else{
      result*=myInt;
    }
    cnumber='';
    current+='*';
    excess='*';
    notifyListeners();
  }
  void rest(){
    var myInt = int.parse(cnumber);
    if(start==true) {
      result+=myInt;
      start=false;
    } else{
    result-=myInt;
    }
    cnumber='';
    current+='-';
    excess='-';
    notifyListeners();
  }
  void divided(){
    var myInt = int.parse(cnumber);
    if(start==true){
      resultd=myInt/1;
      result=resultd.toInt();
      start=false;
    }
    else{
      resultd/=myInt;
      result=resultd.toInt();
    }
    cnumber='';
    current+='/';
    excess='/';
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
     start=true;
    }
    if(excess=='*'){
     var myInt = int.parse(cnumber);
     result*=myInt;
     cnumber=result.toString();
     excess='';
     start=true;
    }
    if(excess=='/'){
     var myInt = int.parse(cnumber);
     resultd/=myInt;
     result=resultd.toInt();
     cnumber=result.toString();
     excess='';
     start=true;
    }
    current=result.toString();
    result=0;
    resultd=0.0;
    notifyListeners();
  }
}
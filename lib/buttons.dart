import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              //const SizedBox(height: 100,),
              const Text('Aqui se van a mostrar los valores'),              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('7')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('8')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('9')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('+')),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('4')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('5')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('6')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('-')),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('1')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('2')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('3')),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('*')),
              ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                const SizedBox(width: 60,),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('0')),
                const SizedBox(width: 50,),
                ElevatedButton(onPressed: (){ /**/ }, child: const Text('/')),
              ],),
            ],
          );
  }
}
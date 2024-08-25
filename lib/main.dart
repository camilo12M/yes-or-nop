import 'package:flutter/material.dart';
import 'package:flutter_aplication1/presentation/screens/counter_functions_screen.dart';
// ignore: unused_import
import 'package:flutter_aplication1/presentation/screens/counter_screen.dart';

void main (){
 runApp(  const MyApp());

}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(

      debugShowCheckedModeBanner: false, //quita el banner de debug 
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.purple
      ),
      home: const CounterFunctionsScreen(),
      
    );
  }

}

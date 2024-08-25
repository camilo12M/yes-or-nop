import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterScreen extends StatefulWidget {

  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}


class _CounterScreenState extends State<CounterScreen> {

   int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('aplicacion de camilo'),
      ),
      body: Center(
         child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),

        Text('Clicks${ clickCounter==1 ? '' : 'S'}', style: TextStyle(fontSize: 25)),

         //if (clickCounter ==1)

          //const Text('click',  style:TextStyle(fontSize: 25 )),

         //if (clickCounter !=1)

          //const Text('click',  style:TextStyle(fontSize: 25 ))

         

        ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          
          setState(() {
            clickCounter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
   
    
  } 
}

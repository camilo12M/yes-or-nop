import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CounterFunctionsScreen extends StatefulWidget {

  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}


class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {

   int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('aplicacion by camilo '),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: (){
              setState(() {
                clickCounter = 0;
              });
            },
            
          )
        ],


      ),
      body: Center(
         child: Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
        Text('$clickCounter', style: TextStyle(fontSize: 160, fontWeight: FontWeight.w100)),

        Text('Clicks${ clickCounter==1 ? '' : 'S'}', style: TextStyle(fontSize: 25)),

        ],
      ),
      ),
      floatingActionButton: Column(
        
        mainAxisAlignment: MainAxisAlignment.end,
       children: [


      CustomButton(
        icon: Icons.refresh_rounded,
        onPressed: () {
          clickCounter = 0;
          setState(() {});    
        },
         
      ),
      
      const SizedBox(height: 10),
      
      CustomButton(
        icon : Icons.exposure_minus_1_outlined,
        onPressed: () {
          if (clickCounter==0)return;
          clickCounter--;
          setState(() {});
        },
        ),

      const SizedBox(height: 10),

      CustomButton(
        icon : Icons.plus_one,
        onPressed: () {
          clickCounter++;
          setState(() {});
        },
        ),

       
        ],)
    );
   
    
  } 
}

   

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPressed;
  
  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      enableFeedback: true,
      elevation: 5,
      shape: StadiumBorder(),
      onPressed: onPressed, // Usar la función pasada como argumento
      child: Icon(icon),
    );
  }
}


import 'dart:math';

import 'package:flutter/material.dart';
 class DiceApp extends StatefulWidget {
  const DiceApp({super.key});

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
   int fistDice = 1;
   int secondDice = 1;

   void change(){
    setState(() {});
       fistDice = Random().nextInt(6)+ 1;
       secondDice = Random().nextInt(6)+1;
      
 }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xffFFE93B),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Center(
          child: Text("Тапшырма 5",
          style: TextStyle(color: Colors.black),
          ),
        ),
        elevation: 0,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Row(children: [
              Expanded(
                 child: InkWell(
                 onTap:(){
                 change();  
                 },
                 child: Image.asset('images/dice$fistDice-png.png'),                 
                 ),                
                ),
               const SizedBox(width: 25,),

              Expanded(
                 child:InkWell(
                 onTap: (){
                  setState(() {});
                    secondDice = Random().nextInt(6)+1;
                    fistDice = Random().nextInt(6)+ 1;                
                  }, 
                 child: Image.asset('images/dice$secondDice-png.png'),
                 ),
                ),
               ],
              ),          
             )
           ]
          ),     
         );
        }
}
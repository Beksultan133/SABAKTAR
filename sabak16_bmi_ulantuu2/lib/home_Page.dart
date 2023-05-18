import 'dart:math';

import 'package:flutter/material.dart';
import 'package:sabak16_bmi_ulantuu2/components/calculator_button.dart';
import 'package:sabak16_bmi_ulantuu2/components/height.dart';
import 'package:sabak16_bmi_ulantuu2/components/male_female.dart';
import 'package:sabak16_bmi_ulantuu2/components/resault_page.dart';
import 'package:sabak16_bmi_ulantuu2/components/status_card.dart';
import 'package:sabak16_bmi_ulantuu2/components/weight_age.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_Text.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_colors.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomePage> {
   bool isTrue = true;
   int weight = 65;
   int age = 28;
   double heightt = 150;
   /*void resulattar(){
     final res =  weight / pow(heightt/100, 2);
    if (res <= 18.5){
       _showAlertDialog(context,'сиз арыксыз!');
     // print('ciz aryk;$res');
    }else if (res >=18.6 && res <= 25){
    //  print('siz normal;$res');
    _showAlertDialog(context,'сиз нормалдуусуз!');
    }else if (res >= 25.1 && res <= 30){
      _showAlertDialog(context,'сизде ашыкча салмак!');
      //print('siz ashykcha salmak;$res');
    }else {
      _showAlertDialog(context,'сиз семизсиз!');
      //print('semiz;$res');
    };
   }*/
   
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      backgroundColor:  AppColors.contColor,
       appBar: AppBar(
        backgroundColor: AppColors.contColor,
         title: const Center(
          child:Text(AppText.bmi)),
          elevation: 0,
      ), 
      body: Padding(
        padding: const EdgeInsets.only(left: 21,top: 32,right: 21,bottom: 41),
        child: Column(
          children: [
           Expanded(
             child: Row(
               children:  [
         StatusCart(
            child: InkWell(
              onTap: () {
                setState(() {
                isTrue=true;
               }
             );   
           },
              child: MaleFemale( 
                icon: Icons.male,
                text:AppText.male, isTrue:isTrue,  
              ),
            ),
           ),
           const SizedBox(width: 35,),
         StatusCart(
            child: InkWell(
              onTap: () {
                setState(() {
                 isTrue=false;
                }
               );    
              },
             child: MaleFemale(
               icon: Icons.female,
                text: AppText.female, isTrue: !isTrue,
                  ),
                 ),
                ),
               ],
             ),
           ),
            const SizedBox(height: 18,),
           Expanded(
             child: Row(
               children: [
               StatusCart(
                 child: Height(
                  text1:AppText.height,
                   text2:'${heightt.toInt()}',
                    text3: 'cm',
                     heightt: heightt,
                      onChanged: (value ) { 
                        setState(() {
                          heightt = value;
                        });
                       }, 
                   
                 ),
               ) 
              ],
             ),
           ),
           const SizedBox(height: 18,),
            Expanded(
             child: Row(
               children: [
           StatusCart(
             child: WeightAge( 
                    text:AppText.weight,
                    san: '$weight',
                     removebasuu: () {
                      setState(() {
                        weight--;
                      });
                       },
                      addbasuu: () { 
                       setState(() {
                         weight++;
                       });
                       },),

                  ),
                 const SizedBox(width: 35,),
           StatusCart(
             child: WeightAge(                
                  text: AppText.age,
                   san: '$age',
                    addbasuu: () { 
                      setState(() {
                        age++;
                      });
                     },
                     removebasuu: () { 
                      setState(() {
                        age--;
                      });
                     
                      },
                    ),
                  ),
               ],
             ),
           ),                 
         ],
        ),
      ), 
      bottomNavigationBar:
      CalculatorButton(onPressed: () { 
    // resulattar();
     Navigator.push(context, 
      MaterialPageRoute(builder: (context)=>  Result(metir: heightt, vsalmak: weight,)),
        );
       }
      )        
    );
  }
}

/*Future<void> _showAlertDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, 
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: AppColors.cartColor, 
        title:  const Center(child: Text('ЖЫЙЫНТЫК')),
        content: Text(text),
        actions: <Widget>[
          TextButton(
            child:  const Center(child: Text('ЧЫГУУ')),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}*/




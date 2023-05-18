import 'package:flutter/material.dart';
import 'package:sabak15_bmi_ulantuu/components/calculator_button.dart';
import 'package:sabak15_bmi_ulantuu/components/height.dart';
import 'package:sabak15_bmi_ulantuu/components/male_female.dart';
import 'package:sabak15_bmi_ulantuu/components/status_card.dart';
import 'package:sabak15_bmi_ulantuu/components/weight_age.dart';
import 'package:sabak15_bmi_ulantuu/theme/app_Text.dart';
import 'package:sabak15_bmi_ulantuu/theme/app_colors.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomePage> {
   bool isTrue = true;
   int weight = 0;
   int age = 28;
   double heightt = 180;
   
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
      const CalculatorButton() ,         
     );
  }
}



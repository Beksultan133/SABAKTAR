import 'package:flutter/material.dart';
import 'package:sabak14_bmi_logica/components/calculator_button.dart';
import 'package:sabak14_bmi_logica/components/height.dart';
import 'package:sabak14_bmi_logica/components/male_female.dart';
import 'package:sabak14_bmi_logica/components/status_card.dart';
import 'package:sabak14_bmi_logica/components/weight_age.dart';
import 'package:sabak14_bmi_logica/theme/app_Text.dart';
import 'package:sabak14_bmi_logica/theme/app_colors.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomePage> {
   bool isTrue = true;
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
              });
                
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
              });
                
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
               children: const  [
               StatusCart(
                 child: Height(
                  text1:AppText.height,
                   text2: '180',
                    text3: 'cm'
                 ),
               ),
                
               ],
             ),
           ),
           const SizedBox(height: 18,),
           Expanded(
             child: Row(
               children: const [
           StatusCart(
             child: WeightAge( 
                    text:AppText.weight,
                    san: '60'),
           ),
           
                 SizedBox(width: 35,),
           StatusCart(
             child: WeightAge(                
                  text: AppText.age,
                   san: '28',
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



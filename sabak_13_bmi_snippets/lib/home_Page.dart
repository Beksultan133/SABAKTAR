
import 'package:flutter/material.dart';
import 'package:sabak_13_bmi_snippets/components/status_card.dart';
import 'package:sabak_13_bmi_snippets/components/status_card2.dart';
import 'package:sabak_13_bmi_snippets/components/status_card3.dart';
import 'package:sabak_13_bmi_snippets/theme/app_Text.dart';
import 'package:sabak_13_bmi_snippets/theme/app_colors.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomePage> {
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
               children: const [
         StatusCart(
           icon: Icons.male,
             text:AppText.male,
                  ),
           SizedBox(width: 39,),
         StatusCart(
           icon: Icons.female,
             text: AppText.female
                  ),
               ],
             ),
           ),
            const SizedBox(height: 18,),
           Expanded(
             child: Row(
               children: const  [
               StatusCartSlider(
                text1:AppText.height,
                 text2: '180',
                  text3: 'cm'
               ),
                
               ],
             ),
           ),
           const SizedBox(height: 18,),
           Expanded(
             child: Row(
               children: const [
                StatusCart2( 
                  text:AppText.weight,
                  san: '60'),
           
                 SizedBox(width: 39,),
           StatusCart2(
                               
                text: AppText.age,
                 san: '28',
                  ),
               ],
             ),
           ),                 
         ],
        ),
      ), 
      
      bottomNavigationBar:
      Container(
         height: 73,
           width: double.infinity,
            color: AppColors.pinkColor,
             child: const Center(
               child: Text(AppText.calculator,style: 
             TextStyle(
              fontSize: 22,
               fontWeight: FontWeight.w500),
            ),
          ),
        ) ,         
     );
  }
}


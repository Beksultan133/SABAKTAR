import 'package:flutter/material.dart';
import 'package:sabak16_bmi_ulantuu2/components/all_calcul.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_Text.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_colors.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_text_style.dart';

class Result extends StatelessWidget {
  const Result({super.key, 
  required this.metir, 
  required this.vsalmak});

  final double metir;
  final int vsalmak;

  @override
   Widget build(BuildContext context) {
   double resulattarr = BMICalculator().bmi(heightt: metir, weight: vsalmak);
    return Scaffold(
      backgroundColor: AppColors.contColor,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 11,
          right: 9,
          top:43
          , 
          ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
           children: [
  const Padding(
         padding:  EdgeInsets.only(left: 14),
           child: Text('ЖЫЙЫНТЫК',
            style: TextStyle(
              fontSize: 22,
                fontWeight: FontWeight.w500),
                ),
               ),
         Container(
          decoration: BoxDecoration(
            borderRadius:BorderRadius.circular(10),
              color:AppColors.cartColor,),
               height: 300,
                width: 600,
              child:  Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
              Text(
                BMICalculator().bmiresault(resulattarr),
                 style: const TextStyle(fontSize: 24,color:Colors.green),
             ),
              Text(resulattarr.toStringAsFixed(1),
                style: const TextStyle(fontSize: 80),
                  ),
              Text(
                BMICalculator().bmidescription(resulattarr),
                style: const TextStyle(fontSize: 12),
                ),
             ],
           ),
          )
         ]
        ),
      ),
      bottomNavigationBar: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkColor,
         shape: 
          const RoundedRectangleBorder(
           borderRadius: BorderRadius.all(Radius.zero)
        ),
        minimumSize: const Size(double.infinity,73)
      ),
      onPressed: (){
        Navigator.pop(context);
      }, 
      child: const Text(AppText.kayreesepte,
      style: AppTextStyle.calculstyle,),
    )
    );
  }
 }
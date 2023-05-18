import 'package:flutter/material.dart';
import 'package:sabak15_bmi_ulantuu/components/cilcular_button.dart';
import 'package:sabak15_bmi_ulantuu/theme/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san, 
    required this.addbasuu, 
    required this.removebasuu,
  });

  final String text;
  final String san;
  final void Function() addbasuu;
  final void Function() removebasuu;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children:  [
       Text(text,style: AppTextStyle.titlestyle 
    ), 
       Text(san,style: 
        AppTextStyle.santextstyle, 
    ),
 Row(mainAxisAlignment: MainAxisAlignment.center,
      children:[          
    CilcularButton(
      icon: Icons.remove,
        basuu:removebasuu,),
       const SizedBox(width: 20,) , 
    CilcularButton(
      icon: Icons.add,
        basuu:addbasuu,),
       ],
      )                  
     ],
    );
  }
}
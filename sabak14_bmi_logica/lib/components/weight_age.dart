import 'package:flutter/material.dart';
import 'package:sabak14_bmi_logica/components/cilcular_button.dart';
import 'package:sabak14_bmi_logica/theme/app_text_style.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
  });

  final String text;
  final String san;

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center,
      children:  [
       Text(text,style: AppTextStyle.titlestyle 
    ), 
       Text(san,style: 
        AppTextStyle.santextstyle, 
    ),
    const Row(mainAxisAlignment: MainAxisAlignment.center,
      children:[          
    CilcularButton(icon: Icons.remove,),
       SizedBox(width: 10,) , 
    CilcularButton(icon: Icons.add,),
     ],)                  
        ],
       );
  }
}
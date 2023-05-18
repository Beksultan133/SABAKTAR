import 'package:flutter/material.dart';
import 'package:sabak15_bmi_ulantuu/theme/app_Text.dart';
import 'package:sabak15_bmi_ulantuu/theme/app_colors.dart';
import 'package:sabak15_bmi_ulantuu/theme/app_text_style.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Container(
         height: 73,
           width: double.infinity,
            color: AppColors.pinkColor,
             child:const Center(
               child: Text(AppText.calculator,
               style: AppTextStyle.calculstyle,)
              
          ),
        ),
    );
  }
}

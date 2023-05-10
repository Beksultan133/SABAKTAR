import 'package:flutter/material.dart';
import 'package:sabak14_bmi_logica/theme/app_Text.dart';
import 'package:sabak14_bmi_logica/theme/app_colors.dart';
import 'package:sabak14_bmi_logica/theme/app_text_style.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       height: 73,
         width: double.infinity,
          color: AppColors.pinkColor,
           child: const Center(
             child: 
             Text(AppText.calculator,style: 
              AppTextStyle.calculstyle
          ),
        ),
      );
  }
}

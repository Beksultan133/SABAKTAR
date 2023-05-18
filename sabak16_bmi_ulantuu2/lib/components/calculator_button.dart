import 'package:flutter/material.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_Text.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_colors.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_text_style.dart';

class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    super.key, 
    required this.onPressed, });

 final void Function() onPressed; 

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.pinkColor,
         shape: 
          const RoundedRectangleBorder(
           borderRadius: BorderRadius.all(Radius.zero)
        ),
        minimumSize: const Size(double.infinity,73)
      ),
      onPressed: onPressed, 
      child: const Text(AppText.calculator,
      style: AppTextStyle.calculstyle,),
    );
  }
}

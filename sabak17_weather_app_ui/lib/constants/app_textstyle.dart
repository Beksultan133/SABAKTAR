import 'package:flutter/material.dart';
import 'package:sabak17_weather_app_ui/constants/app_colors.dart';

class TextStyleApp{
  static const appbarTextStyle = 
  TextStyle(
      color: Colors.black,
       fontSize: 24,
        fontWeight: FontWeight.w800);

  static const SanTextStyle = 
  TextStyle(
       color: AppColors.white,
         fontSize: 100,
           fontWeight: FontWeight.w500,
          );
    

  static const bodyTextStyle = 
 TextStyle(
                fontSize: 70,
                 color: AppColors.white,
                  fontWeight: FontWeight.w500);

   static const bishTextStyle = 
 TextStyle(
                fontSize: 80,
                 color: AppColors.white,
                  fontWeight: FontWeight.w500);
}

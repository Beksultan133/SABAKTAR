import 'package:flutter/material.dart';
import 'package:sabak20_wether_app_add_geolocator_and_cities_list/constants/app_colors.dart';

class TextStyleApp{
  static const appbarTextStyle = 
  TextStyle(
      color: Colors.black,
       fontSize: 42,
        fontWeight: FontWeight.w800);

  static const sanTextStyle = 
  TextStyle(
       color: AppColors.white,
         fontSize: 100,
           fontWeight: FontWeight.w500,
          );
    

  static const bodyTextStyle = 
  TextStyle(
            color: AppColors.clouds,
               fontSize: 100,
                              );

   static const bishTextStyle = 
 TextStyle(
                fontSize: 10,
                 color: AppColors.namecity,
                  fontWeight: FontWeight.w500);
                  
   static const cityTextStyle = 
 TextStyle(
          fontSize: 25,
           fontWeight: FontWeight.w800
                    );               
}

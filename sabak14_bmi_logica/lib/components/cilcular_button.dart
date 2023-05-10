import 'package:flutter/material.dart';
import 'package:sabak14_bmi_logica/theme/app_colors.dart';

class CilcularButton extends StatelessWidget {
  const CilcularButton({super.key, required this.icon,});
 final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     width: 45,
       height: 45,
        child: FloatingActionButton( 
          backgroundColor: AppColors.greyColor,
           onPressed: (){},
         child:
         Icon(icon,
         color: AppColors.whiteColor,
         size: 40,) ,),
      );
  }
}
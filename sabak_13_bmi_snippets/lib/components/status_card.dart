import 'package:flutter/material.dart';

import 'package:sabak_13_bmi_snippets/theme/app_colors.dart';

class StatusCart extends StatelessWidget {
  const StatusCart({
    super.key,  this.icon, required this.text,});
    final IconData? icon;
    final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(               
     child: 
     Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cartColor,
       child:  Column(mainAxisAlignment: MainAxisAlignment.center,
         children:  [
          Icon(icon,
              size: 80,),
           Text(text,
               style: const TextStyle(
                fontSize: 18,
                fontWeight:FontWeight.w500),
         ),         
        ],
       ),
      )             
    );
  }
}
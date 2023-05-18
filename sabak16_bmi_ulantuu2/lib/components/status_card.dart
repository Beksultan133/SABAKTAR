import 'package:flutter/material.dart';
import 'package:sabak16_bmi_ulantuu2/theme/app_colors.dart';


class StatusCart extends StatelessWidget {
  const StatusCart({
    super.key, required this.child,   });
    final Widget child;
    
  

  @override
  Widget build(BuildContext context) {
    return Expanded(               
     child: 
     Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cartColor,
       child: child,
      )             
    );
  }
}


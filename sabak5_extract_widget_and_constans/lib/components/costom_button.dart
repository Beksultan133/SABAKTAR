 
 import 'package:flutter/material.dart';
import 'package:sabak5_extract_widget_and_constans/constants/text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.icon, required this.text});
 final IconData? icon;
 final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 230,
     child: ElevatedButton(onPressed: (){}, child:
          Row
      (children:  [
         Icon(icon),
         const SizedBox(width: 40),
           Text(
            text,style:
             TextStyles.phoneNummberColor,          
    ),
           ],
          ),
         ),
        );
  }
}


import 'package:flutter/material.dart';
import 'package:sabak_13_bmi_snippets/theme/app_colors.dart';

class StatusCartSlider extends StatelessWidget {
  const StatusCartSlider({
    super.key,  this.icon,  required this.text1, required this.text2, required this.text3,});
    final IconData? icon;
    final String text1,text2,text3;
    
   

  @override
  Widget build(BuildContext context) {
    return Expanded(               
     child: 
     Card(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: AppColors.cartColor,
       child:  Column(mainAxisAlignment: MainAxisAlignment.center,
         children:  [
           Text(text1,style:
               const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500),),
           
           Row(mainAxisAlignment: MainAxisAlignment.center,
           crossAxisAlignment: CrossAxisAlignment.baseline,
           textBaseline: TextBaseline.alphabetic,
            children: [
              
             Text(text2 ,style: 
              const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900),), 
           Text(text3, style: 
            const TextStyle(
                   fontSize: 20,
                   fontWeight: FontWeight.w800), ),    
           ],
           ),
      SizedBox(
        width: 400,  
          child: Slider  (
           value: 180,
             min: 0,
              max: 250,
              activeColor: AppColors.whiteColor, 
                inactiveColor: AppColors.greyColor, 
                thumbColor: AppColors.pinkColor,    
               onChanged: (value){ 
             }
           ),
         )      
        ],
       ),
      )             
    );
  }
}
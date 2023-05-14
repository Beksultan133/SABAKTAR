

import 'package:flutter/cupertino.dart';

import 'package:sabak14_bmi_logica/theme/app_colors.dart';
import 'package:sabak14_bmi_logica/theme/app_text_style.dart';

class Height extends StatelessWidget {
  const Height( {
    super.key,
    required this.text1,
    required this.text2,
    required this.text3, 
   
     
  }) ;
   
  
  

  final String text1;
  final String text2;
  final String text3;
 
  

  

  @override
  Widget build(BuildContext context) {
    return Column(
     mainAxisAlignment: MainAxisAlignment.center,
      children:  [
        Text(text1,style:
            AppTextStyle.heightstyle),
        
        Row(mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
         children: [
           
       Text(text2 ,style: 
            AppTextStyle.cm180style), 
       Text(text3, style: 
           AppTextStyle.cmstyle),    
        ],
        ),
      SizedBox(
     width: 400,  
       child: CupertinoSlider  (
        value: 180,
          min: 0,
           max: 250,
           activeColor: AppColors.whiteColor, 
             
             thumbColor: AppColors.pinkColor, 
             onChanged: ( value) { 

          },     
        ),
       )      
      ],
    );
  }
}
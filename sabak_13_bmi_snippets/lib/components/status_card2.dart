import 'package:flutter/material.dart';

import 'package:sabak_13_bmi_snippets/theme/app_colors.dart';

class StatusCart2 extends StatelessWidget {
  const StatusCart2({
    super.key,  this.icon, required this.text, required this.san,});
    final IconData? icon;
    final String text;
    final String san;

  @override
  Widget build(BuildContext context) {
    return Expanded(               
     child: 
     Card(shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)),
       color: AppColors.cartColor,
         child:  Column(mainAxisAlignment: MainAxisAlignment.center,
           children:  [
       Text(text,style: const 
         TextStyle(
            fontSize: 20,
             fontWeight: FontWeight.w500),), 
       Text(san,style: const 
         TextStyle(
            fontSize: 40,
             fontWeight: FontWeight.w800),),
    Row(mainAxisAlignment: MainAxisAlignment.center,
      children:const [          
         CilcularButton(icon: Icons.remove,),
            SizedBox(width: 10,) , 
         CilcularButton(icon: Icons.add,),
          ],)                  
        ],
       ),
      )             
    );
  }
}

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

import 'package:flutter/material.dart';

class ConteinerWidget extends StatelessWidget {
  const ConteinerWidget({
    super.key, required this.contText, required this.contText2,  this.iconContainer, this.image, this.color,  });
final String contText;
final String contText2;
final IconData? iconContainer;
final String? image;
final Color? color;



  @override
  Widget build(BuildContext context) {
    return Container(
         padding: const EdgeInsets.only(left: 100,bottom: 10), 
          width: double.infinity,
           color: color,
     child: 
         Row(
          children: [
            Column(
              children: [
               Text('$contText '),
               Text('$contText2 '),
               Icon(iconContainer),      
              ],
             ),
            const SizedBox(width: 40,),
            Column(
              children: [
              Image.network('$image',height: 65,width: 65,
           ),   
          ],
         )
       ],
      ) 
    );
  }
}

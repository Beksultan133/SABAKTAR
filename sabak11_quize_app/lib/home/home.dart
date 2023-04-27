
import 'package:flutter/material.dart';
import 'package:sabak11_quize_app/constants/app_text_styles.dart';
import 'package:sabak11_quize_app/constants/colors.dart';
import 'package:sabak11_quize_app/constants/text.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
  final a = false;
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(backgroundColor:AppColors.ScaffoldColor,
      appBar: AppBar(backgroundColor:AppColors.AppBarColor,
        title: const Center(
          child:  Text(
            'ТАПШЫРМА 7',
            style: AppTextStyles.appbarTextStyle,
          ),
        ),
        elevation: 0,
      ),
   body: Column(mainAxisAlignment: MainAxisAlignment.center,
      children: [
       const Text('Кыргызстанда 7 область барбы?',        
        style: bodyTextStyle.BodyTextStyle,
         textAlign: TextAlign.center,
        ),
        const SizedBox(height: 102,),
        SizedBox(
         height:50, 
          width: 280,
           child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.GREEN),
             onPressed: (){}, 
              child: const Text(AppText.tuura,
               style: trueStyle.TrueStyle),
          ),
        ),
        const SizedBox(height: 30,),
        SizedBox(
         height: 50,
          width: 280,
           child: ElevatedButton( 
            style: ElevatedButton.styleFrom(backgroundColor: AppColors.Red),          
             onPressed: (){},
              child: const Text(AppText.tuuraEmes,
               style: trueStyle.TrueStyle,),
          ),
         ),
         const SizedBox(height: 35,),
         Row(
          children:const [
           Icon(
            Icons.close,
             color: Colors.red,
              size: 40,),
           Icon(
            Icons.check,
             color: Colors.green,
              size: 40,)
           ],
          ),
         /*SizedBox(
          height: 50,        
           child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return a ? Icon(Icons.check) : Icon(Icons.close);
            }
           ),
         )*/
       ],
      ),
    );
  }
}
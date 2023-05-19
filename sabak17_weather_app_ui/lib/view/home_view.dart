
import 'package:flutter/material.dart';
import 'package:sabak17_weather_app_ui/constants/app_colors.dart';
import 'package:sabak17_weather_app_ui/constants/app_textstyle.dart';
class MyHomeApp extends StatefulWidget {
  const MyHomeApp({super.key});

  @override
  State<MyHomeApp> createState() => _MyHomeAppState();
}
 class _MyHomeAppState extends State<MyHomeApp> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
        backgroundColor:AppColors.appbgr,
          title:
       const Center(child:  Text('ТАПШЫРМА-09',
         style: TextStyleApp.appbarTextStyle,
        )
       ),
     elevation: 0,
      ), 
      body:
      Container(
        decoration: const BoxDecoration(
          image:DecorationImage(
            image: AssetImage('assets/images/foto.jpg'),
             fit: BoxFit.cover,
         ),
        ),
        child:  Column(children: [
        const Padding(
          padding: EdgeInsets.only(left: 10,right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Icon(Icons.near_me,
                 color:AppColors.white,
                 size: 45,),
                  
                Icon(Icons.location_city,
                 color:AppColors.white,
                 size: 45,),
             ],
            ),
          ),
          const SizedBox(height: 50,),
          Row(
            children: [
              const Padding(padding: EdgeInsets.only(left: 10,)),
                const Text('8',
              style:TextStyleApp.SanTextStyle),
               Image.asset('assets/images/cloud.png',
                 height: 150,
                  width: 150,),
            ],
          ),
           const Align(
            alignment: Alignment.bottomRight,
             child:  Text('You\'ll\nneed\nand',
              style: TextStyleApp.bodyTextStyle
            ),
           ), 
         const Align(alignment:Alignment.centerRight,
           child: Text('Bishkek',
               style:TextStyleApp.bishTextStyle
            ),
         ),
        ],
       ),
      )
    );
  }
}
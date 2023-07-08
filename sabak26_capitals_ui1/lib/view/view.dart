
import 'package:flutter/material.dart';
import 'package:sabak26_capitals_ui1/constants/app_colors.dart';
class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      backgroundColor: AppColors.scaffold,
      appBar: AppBar(backgroundColor:AppColors.grey,
    title:   const Text('МАМЛЕКЕТТЕР БОРБОРУ'),
    actions: [
      IconButton(onPressed: (){}, 
       icon:const Icon (Icons.settings,
        color: AppColors.blue,)),
      IconButton(onPressed: () {},
       icon: const Icon(Icons.more_vert,color: AppColors.black,),
          ),
         ],
        ),
      );
    }
}
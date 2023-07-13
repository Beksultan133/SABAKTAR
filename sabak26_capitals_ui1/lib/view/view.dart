

import 'package:flutter/material.dart';
import 'package:sabak26_capitals_ui1/constants/app_colors.dart';
class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomeView> {
  List<String> continents =[
    'Asia',
    'Africa',
    'Europe',
    'Australia',
    'Horth America',
    'South America',
  ];
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      backgroundColor: AppColors.scaffold,
      appBar: AppBar(backgroundColor:AppColors.grey,
    title:   const Text('МАМЛЕКЕТТЕР БОРБОРУ!'),
    actions: [
    IconButton(onPressed: (){}, 
       icon:const Icon (Icons.settings,
        color: AppColors.blue,)),
    IconButton(onPressed: () {},
       icon: const Icon(Icons.more_vert,
        color: AppColors.black,),
          ),
         ],
        ),
     body:  Column(children: [
         const Divider(
          indent: 15,
           endIndent: 15,
            color: AppColors.dividerColor,
             height:1,),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10, top: 25 , right: 10),
                child: GridView.builder(
                 gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    //childAspectRatio: 2 / 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10),
                itemCount:continents.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color:AppColors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Text(continents[index],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold),),
                  );
                }),
              ),
            ),
         ],
        ),
      );
    }
}
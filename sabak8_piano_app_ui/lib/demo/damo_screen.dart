import 'package:flutter/material.dart';

import '../components/demo_black.dart';
import '../components/demo_white.dart';
 class DemoScreem extends StatefulWidget {
  const DemoScreem({super.key});

  @override
  State<DemoScreem> createState() => _DemoScreemState();
}

class _DemoScreemState extends State<DemoScreem> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
           height: 350,
            child: Stack(children: [
              
               ListView.builder(
                itemCount : 7,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (BuildContext context, index) {
                 return const DemaWhiteKey(); }),
                 Row(
                  children: const [
                    SizedBox(width: 50,),
                  demoblacKey(),
                    SizedBox(width:20 ,),
                  demoblacKey(),
                    SizedBox(width: 10*18,),
                  demoblacKey(),
                    SizedBox(width: 20,),
                  demoblacKey(),
                 
               ],
              )
             ]
            ),                  
           )
        ),
    );  
   }
}


  
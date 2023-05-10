import 'package:flutter/material.dart';
class ForExample extends StatefulWidget {
  const ForExample({super.key});

  @override
  State<ForExample> createState() => _ForExampleState();
}
 class _ForExampleState extends State<ForExample> {
  bool icon = true;
  bool istrue =true;
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
    title: const Text('ForExample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            children: [
        InkWell(onTap: () {
          setState(() {
            istrue=true;
            icon=true;
          });
         
        },
          child: Container(
            width: 50,
             height: 50,color:istrue? Colors.red:const Color.fromARGB(255, 174, 109, 102),
              child:icon? const Icon(Icons.male):const Icon(Icons.female)
          ),
        ),
        const SizedBox(height: 10,),
         InkWell(
          onTap: () {
            setState(() {
             istrue=false; 
             icon=false;  
            });
          
          
          },
           child: Container(
             width: 50,
              height: 50,color:!istrue?Colors.red:const Color.fromARGB(255, 192, 111, 102),
              child: !icon? const Icon(Icons.male):const Icon(Icons.female),
           ),
         ),
        ],
        ),
      ),
     );
  }
}
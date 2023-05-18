import 'package:flutter/material.dart';
class EXTRACT extends StatefulWidget {
  const EXTRACT({super.key});

  @override
  State<EXTRACT> createState() => _EXTRACTState();
}
 class _EXTRACTState extends State<EXTRACT> {
  int incremant = 0;
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
    title: const Text('EXTRACT'),
    
      ),
      body:Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('$incremant'),
     const SizedBox(height: 20,),
          FloatingActionButton(onPressed: (){
            setState(() {
              incremant++;
            });
          },
          child: const Icon(Icons.add),),
     const SizedBox(height: 10,),
          FloatingActionButton(onPressed: (){
            setState(() {
              incremant--;
            });
          },
          child: const Icon(Icons.remove),)
        ],),
      )
     );
  }
}
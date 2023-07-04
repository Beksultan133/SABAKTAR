
import 'package:flutter/material.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
    title: const Center(
      child: Text('MyHomePage',
      style: TextStyle(fontSize: 24,
      fontWeight: FontWeight.w600),
        ),
       ),
      ),
      body:  Column(children: [
        Icon(Icons.adb,size: 100,),
          Icon(Icons.air,size: 100,),
      ],),
     );
  }
}
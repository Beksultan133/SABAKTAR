// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';

// ignore: camel_case_types
class ekinchi_bet extends StatelessWidget {

  const ekinchi_bet({super.key, required this.count});
   final int count;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("тапшырма 2")),
     ),
     body: Center(
       child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Card(
          color: Colors.grey,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: Theme.of(context).colorScheme.outline,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SizedBox(width: 300,
          height: 50,
          child:  Center(child: Text("сан:$count",
          style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w500),)),
          ),
        )
       ]),
     ),
    );
  }
}

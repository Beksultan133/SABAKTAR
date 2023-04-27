import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const iamrich(),
    );
  }
}


  // ignore: camel_case_types
  class iamrich extends StatefulWidget {
  const iamrich({super.key});

  @override
  State<iamrich> createState() => _iamrichState();
}

// ignore: camel_case_types
class _iamrichState extends State<iamrich> {
  @override
  Widget build(BuildContext context) {
    
     return Scaffold(
      backgroundColor:( const Color.fromARGB(255, 255, 191, 17)),
     appBar: AppBar(backgroundColor: const Color.fromARGB(255, 255, 191, 17),
     title: const Center(child: Text("Тапшырма 3",
     style: TextStyle(color: Colors.black),
     ),
     ),
     
    ),
       body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [const Text("I'm rich",style: TextStyle(fontSize: 48 ,fontFamily: "Sofia-Regular"),
          
          ),
          SizedBox(
            width:250,
            height: 250,

            child: Image.asset("assets/images/briliant.png")),
          ],
           ),
       ),
    );
  }
}
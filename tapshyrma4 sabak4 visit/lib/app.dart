
import 'package:flutter/material.dart';
import 'package:tapshyrma4/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:sabak_13_bmi_snippets/home_Page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),      
      home: const MyHomePage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sabak15_bmi_ulantuu/home_Page.dart';

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
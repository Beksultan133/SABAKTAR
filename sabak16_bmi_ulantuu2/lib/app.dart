import 'package:flutter/material.dart';
import 'package:sabak16_bmi_ulantuu2/home_Page.dart';

import 'example.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.dark(),      
      home:  const MyHomePage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:sabak12_quize_app_2/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
               
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

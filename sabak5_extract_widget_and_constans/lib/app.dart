import 'package:flutter/material.dart';
import 'package:sabak5_extract_widget_and_constans/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(                                                                      
        primarySwatch: Colors.green,
      ),
      home: const HomePage(),
    );
  }
}


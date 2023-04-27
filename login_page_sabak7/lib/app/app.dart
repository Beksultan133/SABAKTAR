 
 import 'package:flutter/material.dart';

import '../home/loginPage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(       
                
        primarySwatch: Colors.brown,
        useMaterial3: true,
      ),
      home: const loginPage(),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:sabak17_weather_app_ui/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
         
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3:true,
        
      ),
      home: const MyHomeApp(),
    );
  }
}

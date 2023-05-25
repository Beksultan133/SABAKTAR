import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true
      ),
      home: const MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 class _MyHomePageState extends State<MyHomePage> {
  dynamic res;
  
  fetchData()async{
    Dio dio = Dio();
   await Future.delayed( const Duration(seconds: 7),);
    res= await dio.get('https://api.openweathermap.org/data/2.5/onecall?lat=42.84&lon=76.06&exclude=hourly,daily,minutely&appid=41aa18abb8974c0ea27098038f6feb1b');
  setState(() { });
  }
  @override
  void initState() {
    super.initState();
    fetchData();
  }
  @override
   Widget build(BuildContext context) {
     return  Scaffold(
      appBar: AppBar(
       title: const Text('MyHomePage'),
      ),
      body:  Center(
        child:
         res == null ? const CircularProgressIndicator() : Text('$res')
      ),
     );
  }
}
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
  int ind = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,elevation: 0,
        title:const Center (
          child:  Text(
            "тапшырма 1",
            style: TextStyle(color: Colors.black),
          ),
        ),
    )
    ,body: Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 20
      ),
      child: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Container (           
          width: double.infinity,
            decoration: BoxDecoration(color: Colors.grey, 
              borderRadius: BorderRadius.circular(8)),height: 25,          
               child: Center(
                 child: Text("сан: $ind",
                 style:  const TextStyle(fontSize: 20 ),),
               ),
            ),
            
             const SizedBox(height: 25,),
          Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
              ElevatedButton(onPressed: (){
                setState(() {});
                ind--;
              }, 
              child: const Icon(Icons.remove)),
              const SizedBox(width: 35,),
              ElevatedButton(onPressed: (){
                setState(() {
                });
                ind++;
            }, 
            child: const Icon(Icons.add))
          ],
         )
        ],
       ),
      ),
     ),
    );      
  }
}

   

import 'package:flutter/material.dart';

import 'package:tapshyrma4/secondPage.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isActive = false;
  String? phoneNummer;
  String? email;
  void ishtoo(){
    setState(() {});
      if(phoneNummer != null && email != null){
        if (phoneNummer!.isEmpty || email!.isEmpty){
         isActive = false; } 
         else{
        isActive = true;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xff056c5c),
       appBar: AppBar(
        backgroundColor: Colors.white,
         title:const Center(
          child: Text("Тапшырма 4",
           style: TextStyle(color: Colors.black),
      ),
    ),
      elevation: 0,
    ),
    body: Center(      
      child: Column( mainAxisAlignment: MainAxisAlignment.center,
        children: [
           const SizedBox(height: 150,
           width: 150,
             child: CircleAvatar(
              backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRuI648iKBVt36kroATc6QAAepQJOa0nQ3Jxg&usqp=CAU"),
                     ),
           ),
         const Text("Beksultan M..U",
          style: TextStyle(fontSize: 48,
           color: Colors.white,
            fontFamily: "Pacifico"),
         ),
        const Text("Flutter Developer",
         style: TextStyle(fontSize: 28,
           color: Colors.white),
        ), 
           
        const Divider(
          height: 0,
           thickness: 2,
            indent: 57,
             endIndent: 47.5,
              color: Colors.white,
                    
        ),
         const SizedBox(height: 23.5),

       Container(color: Colors.white,
        child: TextFormField(
          style: const TextStyle(fontSize: 20,
           color: Color(0xff056c5c),
            fontWeight: FontWeight.w600),
             onChanged: (String? value){
              phoneNummer = value;
              ishtoo();
               print("value: $value");
               print("phoneNummer: $phoneNummer");
             },
              decoration: const InputDecoration(
                focusColor: Colors.white,               
                 prefixIcon: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 40),
                   child: Icon(Icons.phone,
                    color: Colors.grey),
                 ),
          ),
        ),
          ),const SizedBox(
            height: 15),

       Container(color: Colors.white,
         child: TextFormField(
           style: const TextStyle(fontSize: 20,
            color: Color(0xff056c5c),
             fontWeight: FontWeight.w600),
              onChanged: (String? value) {
                email = value ;
                ishtoo();
                print("value: $value");
                print("email: $email");                                            
              },
               decoration: const InputDecoration(
                focusColor: Colors.white,
                 prefixIcon: Padding(
                   padding: EdgeInsets.symmetric(horizontal: 40),
                   child: Icon(Icons.mail,
                     color: Colors.grey),
                 ),
                ),
               ),
              ),
              const SizedBox(height: 20,),


              SizedBox(
                height: 40,
                 width: 110,
                   child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      side: const BorderSide(width: 2,color: Colors.white),
                       elevation: 10,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13),
                      ),
                    ),
                 onPressed: isActive? (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> const iamrich()));
                 }:null,
                  child: const Text("Start"),
                ),
              ),
            ],
          ),
       ),
     ); 
   }
}

import 'package:flutter/material.dart';

// ignore: camel_case_types
class demoblacKey extends StatefulWidget {
  const demoblacKey({
    super.key,});
  @override
    State<demoblacKey> createState() => _demoblacKeyState();
}

// ignore: camel_case_types
class _demoblacKeyState extends State<demoblacKey> {
     bool ispressed=true;
  @override
    Widget build(BuildContext context) {
      return GestureDetector(
       onTapDown: (details){
        setState(() {
          ispressed=true; 
      });
     },
      onTapUp: (details){
       setState(() {
        ispressed=false; 
      });
     },
      child: Transform(
        transform: Matrix4.rotationX(ispressed? 0.2 : 0.0),
          child: Container(
             color: ispressed?  Colors.grey[900] : Colors.black,
              width: 60,
               height: 200,
       child: Stack(
        children: [   
          Padding(
            padding:   const EdgeInsets.only(top: 100,left: 20),
            child: AnimatedPositioned(
              duration: const Duration(milliseconds: 60),
              height: ispressed? 15 : 40,
                 child:  const CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 39, 32, 32),
                   radius: 10,    
                 ),
               ),
            ),]
          ), 
        ),
       ),
      );
  }
}
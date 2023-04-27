

import 'package:flutter/material.dart';

class DemaWhiteKey extends StatefulWidget {
  const DemaWhiteKey({
    super.key,
    });
  @override
     State<DemaWhiteKey> createState() => _DemaWhiteKeyState();}

  class _DemaWhiteKeyState extends State<DemaWhiteKey> {
    bool ispressed = false;

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
        transform: Matrix4.rotationX(ispressed ? 0.2 : 0.0),
         child: Container(
           width: 80,
            height: 50,
             decoration: BoxDecoration(
                color: ispressed? Colors.grey[300] : Colors.white,
                 border: Border.all(color: Colors.black,width: 1),
           ),
         ),
      ),
    );
  }
}
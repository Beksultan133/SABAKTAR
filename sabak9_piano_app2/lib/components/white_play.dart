

import 'package:flutter/material.dart';

class WhitePlay extends StatelessWidget {
  const WhitePlay({
    super.key,required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
          onTap:onTap,
            child: Container(
              height: 270,
              width: 80,
              color: Colors.white,
       ),
     );
  }
}
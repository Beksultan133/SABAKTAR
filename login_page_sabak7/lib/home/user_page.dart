import 'package:flutter/material.dart';

class UserPage extends StatelessWidget {
     const UserPage({super.key,required this.student});
  final String student;

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar(
        title:  const Center(child: Text('UserPage',)),
        ),
        body: Column( 
        children: [
          Text('Salam:$student')
        ], 
        
        )
    );
  }
}

class Student {
}
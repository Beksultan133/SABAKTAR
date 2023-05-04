import 'package:flutter/material.dart';
import 'package:login_page_sabak7/model.dart';


class UserPage extends StatelessWidget {
     const UserPage({super.key,required this.student,});
  final Student student;

  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      appBar: AppBar(
        title:  const Center(child: Text('UserPage',)),
        ),
        body: Center(
          child: Column(children: [ 
         CircleAvatar(
          radius: 100,
          backgroundImage: NetworkImage(student.image),
          ),
          Text(student.phone.toString()),
           Text(student.name),
            Text(student.surName),
             Text(student.email),
              Text(student.age.toString()),
               Text(student.group.toString()),
                             
          ], 
              ),
        )
    );
  }
}



import 'package:flutter/material.dart';
import 'package:sabak5_extract_widget_and_constans/components/costom_button.dart';
 
 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text("Componens and constansts")),
      ),
      body: Center(
        child: Column( mainAxisAlignment: MainAxisAlignment.center,
          children:const [
             SizedBox(height: 200,
             width: 200,
               child: CircleAvatar(
                backgroundImage:
                   NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSS8z3HlHdqe9YFyKQ1eYldQjeBsitM5O5hpA&usqp=CAU")
                         ),
             ),
              Text('Hello Programmer'),
                           
             SizedBox(height: 10,)  ,                   
           
              CustomButton(text: 'phone',icon: Icons.phone,),
                    SizedBox(height: 20,),
              CustomButton(text: 'gmail',icon: Icons.mail,),
                    SizedBox(height: 20),

         
         ],
        ),
      ),
    );
  }
}



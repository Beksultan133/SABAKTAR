


// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:login_page_sabak7/home/user_page.dart';

import '../model.dart';
final studentter = <student>[
      Daniar,
      Dinara,
      Hanzada,
      Mirbek,
      Aybek];
// ignore: camel_case_types
class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

// ignore: camel_case_types
class _loginPageState extends State<loginPage> {
 String? _name;
 String? _gmail;

   void controlNameGmail(String name, String email){
       int index = 0;
       for(final student in studentter){
        index++;  
         if(name == student.name && email == student.email){
          
          Navigator.
            push(context, 
          MaterialPageRoute(
              builder: (context) =>  UserPage 
                  (student: student.name,
             ),
            ),
          );
        break;            
    }   else{
      
      if(index == studentter.length){
        ScaffoldMessenger.of(context).
      showSnackBar(const SnackBar(content: 
        Text('Атыныз же почтаныз туура эмес!!!'),
        ),
      );      

      } else{
        continue;
      }
     }
    }
  }

 /*void controlNameGmail(String name, String email){
       
       for(int i = 0;i<=  studentter.length;i++){   
         if(name == studentter[i] && email == studentter[i]){
         
          Navigator.
            push(context, 
          MaterialPageRoute(
              builder: (context) => const UserPage()),);
        break;           
    }   else{
    if(i == studentter.length){
   ScaffoldMessenger.of(context).
    showSnackBar(const SnackBar(content: Text('Атыныз же почтаныз туура эмес'),
    ),
        );
       }       
      }
     }
}*/
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(title: 
       Center(
        child: Text('LoginPage'.toUpperCase(),
        ),
       ),
      ),
       body: Center(
         child: Container(
          decoration:
            const BoxDecoration(image: 
              DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/477057828/photo/blue-sky-white-cloud.jpg?s=612x612&w=0&k=20&c=GEjySNaROrUD7TJUqoXEiBDI9yMmr2hUviSOox4SDlU='),
              fit: BoxFit.cover,
              
                           
              ),
              ),
              
           child:
            Container(decoration: BoxDecoration(
               color: const Color.fromARGB(0, 23, 8, 184).withOpacity(0.2),
              
            ),
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children:  [
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    FlutterLogo(
                      size: 80),
                       Text('Flutter',
                       style: 
                        TextStyle(fontWeight: FontWeight.w700),
                        ),
                     ],
                    ),
               const Text('Welcome to Saifty!',
                 style: TextStyle (
                  fontSize: 25,
                   fontWeight: FontWeight.w600),
                 ),
               const Text('Keep your data safe!'),
                Padding(           
                 padding:  const EdgeInsets.only(left: 20, right: 20,top: 13),
                  child: TextField(
                     onChanged:( String value) {
                       _name = value; 
                      print(value);
                      print(_name);
                    },
                    decoration: const InputDecoration(
                     border: OutlineInputBorder(),
                      labelText: 'Name'
                  ), 
                 ),
               ),
                Padding(           
                 padding: const  EdgeInsets.only(left: 20, right: 20,top: 13),
                  child: TextField(
                    onChanged:( String value) {
                      _gmail = value;
                      print(value);
                      print(_gmail);
                    },
                     decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                       labelText: 'Gmail'
                       
                  ), 
                 ),
               ),
               const SizedBox(height: 15,),
                     
               ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize:  const Size(170, 50),),
                   onPressed: (){
                    if(_name!=null && _gmail!=null) {
                      controlNameGmail(_name!, _gmail!);
                    }
                   },
                    child:const Text('Login'),
                ),
              ],
             ),
            ),
         ),
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:sabak10_piano_app_and_extract/components/container_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Center(child:  Text('Extract Wiget',
        ),
      ),
        
      ),
      body: Center(
        child: Column(
         children: [
          Column(children:const [
        ConteinerWidget(
            contText: 'container 1',
             contText2: 'USA',
              iconContainer: Icons.access_alarms,
                image: 'https://cdn.britannica.com/79/4479-050-6EF87027/flag-Stars-and-Stripes-May-1-1795.jpg',
                color: Colors.deepOrangeAccent,),
                
              SizedBox (height: 10,),
        ConteinerWidget(
            contText: 'container 2',
             contText2: 'Great Britain',
              iconContainer: Icons.accessibility,
                image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEpHQDfSZD9IgHk5ps_hCiBBHEpOIV1qoXRg&usqp=CAU',
                 color: Colors.blue,),
             SizedBox(height: 10,),
        ConteinerWidget(
          contText: 'container 3',
           contText2: 'India',
            iconContainer: Icons.ac_unit_rounded,
             image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAWQgQstiKa1U6P0QfpcnlRUbIR0IvIDfhAQ&usqp=CAU',
              color: Colors.brown,
        ),SizedBox(height: 10,),
        ConteinerWidget(
          contText: 'container 4',
           contText2: 'Ispaniya',
            iconContainer: Icons.add_box,
             image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSc4Xow7wMscfpAzBunPn3nnuhpgcM4W_a8tg&usqp=CAU',
              color: Colors.amber,
            ),
             SizedBox(height: 10,),
        ConteinerWidget(
            contText: 'container 5',
             contText2: 'Japan',
              iconContainer: Icons.add_to_drive,
               image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEguTfHuysFjvhU7kqUPfp4G0fw968fcWxKOxNOAxNB3xDrc_RONY5r3Okno6Q-zT58y4&usqp=CAU',
               color: Colors.redAccent,),
             SizedBox(height: 10,),
        /*ConteinerWidget(
            contText: 'container 6',
             contText2: 'sabak 1',
              iconContainer: Icons.add_task,),*/                
           ],
          ),         
         ],
        ),
      ),
    );
  }
}


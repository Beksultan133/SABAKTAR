import 'dart:html';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:sabak20_wether_app_add_geolocator_and_cities_list/constants/api_const.dart';
import 'package:sabak20_wether_app_add_geolocator_and_cities_list/constants/app_colors.dart';
import 'package:sabak20_wether_app_add_geolocator_and_cities_list/constants/app_textstyle.dart';
import 'package:sabak20_wether_app_add_geolocator_and_cities_list/model.dart';

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
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true),
      home: const MyHomePage(),
    );
  }
}
 const List cities = <String>[
 'Bishkek',
 'Osh',
 'Jalal-Abad',
 'Karakol',
 'Talas',
 'Batken',
 'Tokmok',
 ];

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
 

class _MyHomePageState extends State<MyHomePage> {
Weather? weather;
 Future <void> getLocator()async{
 LocationPermission permission = await Geolocator.requestPermission();
 if (permission==LocationPermission.denied){
  permission = await Geolocator.requestPermission();
 }if(permission == LocationPermission.always&&permission == LocationPermission.whileInUse)
 { Position position = await Geolocator.getCurrentPosition();
  Dio dio = Dio();
  final response = await dio.get(ApiConst.address());
  if(response.statusCode == 200){
    weather =Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'], 
          name: response.data ['timezone'], 
          temp: response.data ['current']['temp']
      );
    }setState(() {
      
    });
   }else{
    Position position = await Geolocator.getCurrentPosition();
  Dio dio = Dio();
  final response = await dio.get(ApiConst.address());
  if(response.statusCode == 200){
    weather =Weather(
          id: response.data['current']['weather'][0]['id'],
          main: response.data['current']['weather'][0]['main'],
          description: response.data['current']['weather'][0]['description'],
          icon: response.data['current']['weather'][0]['icon'], 
          name: response.data ['timezone'], 
          temp: response.data ['current']['temp']
      );
    }setState(() {
    }
   );
  }
  }
 


  Future<void> fetchData([String? url]) async {
    Dio dio = Dio();
    //await Future.delayed(const Duration(seconds: 2));
    final response = await dio.get(
      ApiConst.weatherData (url?? 'bishkek') );
    if (response.statusCode == 200) {
       weather = Weather(
          id: response.data['weather'][0]['id'],
          main: response.data['weather'][0]['main'],
          description: response.data['weather'][0]['description'],
          icon: response.data['weather'][0]['icon'], 
          name: response.data ['name'], 
          temp: response.data ['main']['temp']
          );
          setState(() {});
        }
  }
  @override
  void initState() {  
    super.initState();
    fetchData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
           const Center(child:Text('Weather App')),
        ),
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
           width: MediaQuery.of(context).size.width,
        child:
          weather==null?  const Center(child: CircularProgressIndicator())    
           :Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/foto.jpg'),
                      fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      children: [
                         Padding(
                          padding: const EdgeInsets.only(left: 10, right: 10),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                              IconButton(
                                onPressed:()async{
                                await  getLocator();
                                
                                },
                                 icon: const Icon(Icons.near_me,
                                 color: AppColors.white,
                                 size: 45,
                                 ),
                               ),
                               IconButton(
                                onPressed:()async{
                              showBottom();
                                },
                                 icon: const Icon(Icons.location_city,
                                 color: AppColors.white,
                                 size: 45,
                                 ),
                               ),
                             
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                 Row(
                   children: [
                     const Padding(
                       padding: EdgeInsets.only(left: 10,
                             ),
                            ),
                             FittedBox(
                               child: Text(
                               '${(weather!.temp -273.15).toInt()}',
                                 style: TextStyleApp.sanTextStyle),
                             ),
                               Image.network(
                                 ApiConst.getIcon(weather!.icon,4),
                              height: 150,
                              width: 150,
                            ),
                          ],
                        ),
                        const SizedBox(width: 5,),
                          Align(
                           alignment: Alignment.centerRight,
                            child: FittedBox(
                              child: Text(
                                weather!.description.replaceAll(' ', '\n'),
                                 style: TextStyleApp.bodyTextStyle
                              ),
                            ),
                          ),       
                         Expanded(
                           child: FittedBox(
                             child: Align(
                              alignment: Alignment.centerRight,
                               child:
                                Text(weather!.name, 
                                  style: TextStyleApp.bishTextStyle),
                             ),
                           ),
                         ),
                      ],
                    ),
                  ),
        )
    );
  }
  void showBottom()async{
  showModalBottomSheet<void>(
            context: context,
            builder: (BuildContext context) {
              return Container(
                height: 250,
                decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                  color:   Colors.grey,),
                child: ListView.builder(
                  itemCount: cities.length,
              itemBuilder: (context,index){
                final city = cities[index];
                return   Card(
                  child: ListTile(
                    onTap: () async{
                     await fetchData(city);
                     Navigator.pop(context);
                    },
                    title: Text('$city',
                    style: TextStyleApp.cityTextStyle 
                    ),
                    
                ),
              );
            }
          )
        );
      },
    );
  }


}




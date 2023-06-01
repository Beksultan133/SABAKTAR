import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:sabak19_weather_app_add_data_to_ui/constants/Api_const.dart';
import 'package:sabak19_weather_app_add_data_to_ui/constants/app_colors.dart';
import 'package:sabak19_weather_app_add_data_to_ui/constants/app_textstyle.dart';
import 'package:sabak19_weather_app_add_data_to_ui/model.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<Weather?> fetchData() async {
    Dio dio = Dio();
    await Future.delayed(const Duration(seconds: 2));
    final response = await dio.get(
      ApiConst.weatherData );
    if (response.statusCode == 200) {
      final Weather weather = Weather(
          id: response.data['weather'][0]['id'],
          main: response.data['weather'][0]['main'],
          description: response.data['weather'][0]['description'],
          icon: response.data['weather'][0]['icon'], 
          name: response.data ['name'], 
          temp: response.data ['main']['temp']
          );
      return weather;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
           const Center(child:Text('Weather App')),
        ),
        body: FutureBuilder(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none) {
              return const Text('cizde internet bailanysh uzuldu');
            } else if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                return Text('${snapshot.error}');
              } else if (snapshot.hasData) {
                final pogoda = snapshot.data;
                return Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/foto.jpg'),
                     fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                         child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                            Icon(
                              Icons.near_me,
                              color: AppColors.white,
                              size: 45,
                            ),
                            Icon(
                              Icons.location_city,
                              color: AppColors.white,
                              size: 45,
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
                           Text(
                           '${(pogoda!.temp -273.15).toInt()}',
                             style: TextStyleApp.SanTextStyle),
                             Image.network(
                               ApiConst.getIcon(pogoda.icon,4),
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
                              pogoda.description.replaceAll(' ', '\n'),
                               style: TextStyleApp.bodyTextStyle
                            ),
                          ),
                        ),       
                       Expanded(
                         child: FittedBox(
                           child: Align(
                            alignment: Alignment.centerRight,
                             child:
                              Text(pogoda.name, 
                                style: TextStyleApp.bishTextStyle),
                           ),
                         ),
                       ),
                    ],
                  ),
                );
              } else {
                return const Text('data kelgen jok');
              }
            } else {
              return const Text('belgisiz kata');
            }
          },
       ),
    );
  }
}

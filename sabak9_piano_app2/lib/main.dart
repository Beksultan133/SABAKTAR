
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sabak9_piano_app2/app.dart';



void main() {
   WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations;
   SystemChrome.setPreferredOrientations;([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);
  
  runApp(const MyApp());
}




import 'package:flutter/material.dart';
import 'app/app.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
   SystemChrome.setPreferredOrientations;
  SystemChrome.setPreferredOrientations;([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}


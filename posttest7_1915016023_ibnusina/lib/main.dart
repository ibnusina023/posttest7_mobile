import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'fire.dart';
import 'package:posttest7_1915016023_ibnusina/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016023_ibnusina/mainPage.dart';
import 'package:posttest7_1915016023_ibnusina/splash.dart';
import 'package:get/get.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

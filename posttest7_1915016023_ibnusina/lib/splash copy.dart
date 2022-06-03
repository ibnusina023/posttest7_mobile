import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:posttest7_1915016023_ibnusina/mainPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashScreenStart();
  }

  splashScreenStart() {
    var timer = Duration(seconds: 3);

    return Timer(timer, () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) {
          return MainPage();
        }),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/logo.png",
          width: lebar / 2,
          height: tinggi / 2,
        ),
      ),
    );
    
  }
}

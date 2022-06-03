import 'package:flutter/material.dart';
import 'package:get/get.dart';

class item1 extends StatelessWidget {
  const item1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      child: new Image.asset('assets/photo1.png')
    );
  }
  
}
//failed

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:posttest7_1915016023_ibnusina/mainPage.dart';
import 'package:posttest7_1915016023_ibnusina/search.dart';
import 'package:posttest7_1915016023_ibnusina/getx_controller/counter_controller.dart';

class ketemu extends StatelessWidget {
  final textController tc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pencarian"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Anda mencari :',
            ),
            Obx(
              () => Text( 
                '${tc.nameEditingController.text}',
              style: Theme.of(context).textTheme.headline4
              ),
            ),
            const Text(
              'Maaf mesin pencarian sedang maintenace',
            ),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final textController tc = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Halo, ${tc.nameEditingController.text}"),
      ),
    );
  }
}



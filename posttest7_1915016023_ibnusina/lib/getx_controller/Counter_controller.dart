import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterController extends GetxController {
  var count = 0.obs;
  increment() => count++;
}

class SwitchController extends GetxController {
  var switchValue = false.obs;
}

class textController extends GetxController {
  var nama = "".obs;
  final nameEditingController = TextEditingController();
}
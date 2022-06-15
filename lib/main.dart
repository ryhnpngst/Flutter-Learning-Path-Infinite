import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learning_path/splashScreen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Dashboard(),
    );
  }
}
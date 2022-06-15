import 'dart:async';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:learning_path/dashboard.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({ Key? key }) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {


  startSplashScreen(){
    var _duration = Duration(seconds: 5);
    return Timer(_duration, () async{
      Get.off(Dashboard());
    });
  }

  @override
  void initState(){
    // TODO: implement initState
    super.initState();
    startSplashScreen();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Text("Ramadhan Kareem"),
            Lottie.asset("asstes/lottie/ramadhan.json", height: 300)
          ]
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:learning_path/sliver.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({ Key? key }) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  var _bigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 1),
              height: _bigger? 300 : 100,
              child: Image.asset("assets/images/kangGojek.png"),
              curve: Curves.bounceOut,
            ),

            RaisedButton(
              onPressed: () => setState(() {
                _bigger =! _bigger;
              }),
              child: Text("Ini Button"),
            ),

            SizedBox(height: 20,),

            InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Text("Ini on Tap")
                )
              ),

              onDoubleTap: () => showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Text("Ini on Double Tap")
                )
              ),

              onLongPress: () => showDialog(
                context: context,
                builder: (context) => Dialog(
                  child: Text("Ini on Long Press")
                )
              ),

              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius:BorderRadius.all(Radius.circular(20))
                ),
                child: Center(
                  child: Text("Button 2"),
                )
              ),
            ),

            SizedBox(height: 20,),

            InkWell(
              onTap: () => Get.to(Sliver),

              child: Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius:BorderRadius.all(Radius.circular(20))
                ),
                child: Center(
                  child: Text("Button 3"),
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}
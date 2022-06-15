import 'package:flutter/material.dart';

class Sliver extends StatefulWidget {
  const Sliver({ Key? key }) : super(key: key);

  @override
  _SliverState createState() => _SliverState();
}

class _SliverState extends State<Sliver> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.blue,
            expandedHeight: 200,
            title: Text("Ini AppBar"),
            flexibleSpace: FlexibleSpaceBar(
              
            ),
          )
        ],
      ),
    );
  }
}
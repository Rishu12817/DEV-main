import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
  
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BISHWA"),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Column(
          children: [Text("HI RISHU")],
        ),
      ),
    );
  }
}

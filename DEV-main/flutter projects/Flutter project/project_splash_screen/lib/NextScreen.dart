import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Intro screen"),
        ),
        body:  Column(
          children: [
            const Text("hello this is intro screen"),

            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
            }, child: Text("Next")),
          ],
        ),
      ),
    );
  }
}

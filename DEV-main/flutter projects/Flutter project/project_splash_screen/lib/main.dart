import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'NextScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Home Screen"),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [

            Builder(builder: (Context){
              return ElevatedButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return IntroScreen();
                  },));
                },
                child: const Text("Intro Screen"),
              );
            }),

            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => IntroScreen()));
              },
              child: const Text("Intro Screen"),
            ),

            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IntroScreen()));
              },
              child: const Text("Intro Screen"),
            ),
          ],
        ),
      ),
    );
  }
}

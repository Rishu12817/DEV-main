import 'dart:math';

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 251, 3, 3),
        title: Text("Ekart"),
       ),
       body: const Column(children: [

         Column(
           children: [
             Row(
               children: [
                 Text("new Header"),

               ],
             )
           ],
         )
       ]),
    );
  }
}
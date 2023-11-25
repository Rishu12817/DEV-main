import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("New Screen"),
        ),
        body:  Column(
          children: [
            const Text("WELCOME \nclick to go to the next screen",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'Agle  kA title h ye ',)),);
                },
                child: const Text("Next"),
            ),
          ],
        ),
      )
    );
  }
}

class FontFamily {
}

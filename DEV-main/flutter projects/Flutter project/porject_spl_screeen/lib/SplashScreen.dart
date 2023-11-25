import 'dart:async';
import 'package:flutter/material.dart';
// import 'package:sizer/sizer.dart';
import 'main.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (Context) => const MyHomePage(
                    title: 'Home Page',
                  )));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
      ),
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.blue.shade900,
          child: const Center(
            child: Text("Classico",
                style: TextStyle(
                  fontSize: 34,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                )),
          )),
    );
  }
}

import 'package:page_transition/page_transition.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return AnimatedSplashScreen(
          backgroundColor: Colors.blue.shade900,
          splash: const Text(
            "E-kart",
            style: TextStyle(
              color: Colors.white,
              fontSize: 38,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.bold,
            ),
          ),
          splashTransition: SplashTransition.fadeTransition,
          pageTransitionType: PageTransitionType.bottomToTop,

          nextScreen:  const LogIn(
            title: 'Home Screen',
          ),
        );
      },
    );
  }
}

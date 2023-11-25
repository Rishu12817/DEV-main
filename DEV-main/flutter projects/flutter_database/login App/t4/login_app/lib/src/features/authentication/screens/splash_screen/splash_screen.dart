import 'package:flutter/material.dart';
import 'package:login_app/src/constants/image_strings.dart';
import 'package:login_app/src/constants/text_strings.dart';
import 'package:login_app/src/features/authentication/screens/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  bool animate = false;
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1600),
    );
    startAnimation();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Future<void> startAnimation() async {
    await Future.delayed(const Duration(seconds: 2));
    setState(() {
      animate = true;
      _animationController.forward();
    });
    await Future.delayed(const Duration(seconds: 5));
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => Welcome_Screen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: animate ? 0 : 320,
              left: animate ? 0 : 80,
              child: ScaleTransition(
                scale: _animationController,
                child: Image.network(
                  "https://www.techasoft.com/uploads/ekart_logo.png",
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Positioned(
              bottom: 150,
              left: 120,
              child: Container(
                child: Text(rAppTagline),
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

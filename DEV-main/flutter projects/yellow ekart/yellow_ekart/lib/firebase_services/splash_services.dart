import 'dart:async';
import 'package:flutter/material.dart';
import 'package:yellow_ekart/ui/auth/login_screem.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
  }
}

import 'package:flutter/material.dart';

class RoundBotton extends StatelessWidget {
  final String title;
  final VoidCallback onTap ;
  const RoundBotton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.deepPurple,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text( title,
            style:  TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: const Center(
        child: Text('Welcome'),
        ),
    );
  }
}
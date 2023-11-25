import 'dart:html';

import 'package:flutter/material.dart';
import 'package:login_app/src/utils/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: RAppTheme.lightTheme,
      darkTheme: RAppTheme.darkTheme,
      themeMode: ThemeMode.light,
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add_shopping_cart_outlined), onPressed: () {}),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'Small header',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            Text(
              'Medium header',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Super Header',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            Text(
              'Paragraph with subtitle 1',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              'Paragraph with subtitle 2',
              style: Theme.of(context).textTheme.subtitle2,
            ),
            Text(
              'Paragraph',
              style: Theme.of(context).textTheme.bodyText1,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
            SizedBox(
              height: 10,
            ),
            OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Image(
                  image: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU")),
            ),

            // TextFormField()
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'main.dart';

class NewScreen extends StatelessWidget {
  const NewScreen({Key? key, required String title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Route"),
        backgroundColor: Colors.green
      ),
      body:  Column(
        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(
                builder: (context) => const MyHomePage(title: 'Home Screen',)));
          },
            child: const Text("return to open route"),
          ),


        ],
      ),
    );
  }
}

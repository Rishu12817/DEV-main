import 'package:flutter/material.dart';

void main() {
  runApp( const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.arrow_back),
              ),
              Text("Header form"),
            ],
          )
        ),
        body:  SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // const Text("NAME"),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Name",
                    ),
                  ),TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Email",
                    ),
                  ),TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Mobile No.",
                    ),
                  ),TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Phone no.",
                    ),
                  ),TextFormField(
                    decoration: const InputDecoration(
                      labelText: "Address",
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: Radio(

                            value: "Male", groupValue: "gender", onChanged: (value) {
                          print(value);
                        }),
                      ),
                      const Text("male"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),

                        child: Radio(value: "Female", groupValue: "gender", onChanged: (value) {}),
                      ),
                      const Text("female"),
                    ],
                  ),
                  ElevatedButton(
                      onPressed: (){
                        // function
                        setState(() {

                        });
                      },
                      child: const Text("Submit"),
                  ),
                ],

            ),
          ),
        ),
      ),
    );
  }
}

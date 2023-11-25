import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Icon(Icons.arrow_back),
              ),
              Text("Meet Our Experts")
            ],
          ),
        ),
        body:  SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30),
                child: Center(
                  child: SizedBox(
                    width: 200.0,
                    height: 200.0,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1612349317150-e413f6a5b16d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80"),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top:12, bottom:5),
                child: Text(
                   "Head - Physiotherapy Dept.",
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top : 0, bottom: 8),
                child:

                Text("Dr. Kapil Singh",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 18),
                child: SizedBox(
                  height: 300,
                    width: 350,
                    child:
                    Card(
                      elevation: 3,
                      child:
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top:20.0,left:20.0, bottom:0),
                            child: Padding(
                              padding: EdgeInsets.only(left:4.0),
                              child: Text("About",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text("Lorem Ipsum is simply dummy text of the printing and simply dummy text of the printing and simply dummy text of the printing and simply dummy text of the printing and simply dummy text of the printing and simply dummy text of the printing and simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic "),
                          ),
                        ],
                      ),
                    ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient:  const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Colors.black,
                      Colors.blue
                    ]
                  )
                ),
                height: 180,
                  width: 350,
                  // backgroundColor: Colors.lightGreen
                  child:
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child:
                    Padding(
                      padding: EdgeInsets.only(top: 5.0, left: 20),
                      child: Column(
                        children: [
                          Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top:8.0, bottom: 8),
                                child: Row(
                                  children: [
                                    Icon(Icons.ac_unit,
                                        size: 22,
                                        color: Colors.white,
                                    ),
                                    Text("Fitterfly",
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:2.0, bottom: 3),
                                child: Text("Watch Our ",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top:2.0, bottom: 3),
                                child: Text("Expert Speaking",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              ),

                              Padding(
                                padding: EdgeInsets.only(top: 10),
                                child: Row(
                                  children: [
                                    Text("Play",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),),
                                    Icon(
                                      Icons.play_arrow,
                                      color: Colors.white,
                                      size: 20,

                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
              )
            ],
          ),
        ),
      ),

    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  Widget generalWidget(IconData icon, String text) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
                color: Colors.yellow, blurRadius: 20, offset: Offset(20, 10))
          ]),
      child: Row(
        children: [
          Icon(
            icon,
            size: 40,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(text,
              style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1.0),
                  fontSize: 23,
                  fontWeight: FontWeight.bold))
        ],
      ),
    );
  }

  List text = ["a", "v", "b", "d", "v", "t"];

  List icons = [
    Icons.holiday_village,
    Icons.home,
    Icons.holiday_village,
    Icons.holiday_village,
    Icons.holiday_village,
    Icons.holiday_village,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(0, 234, 34, 100),
      // appBar: AppBar(
      //   title: Text("Portfolio"),
      body: SingleChildScrollView(
        child: Container(
          // decoration: BoxDecoration(
          //     image:
          //         DecorationImage(image: AssetImage("images/backgroundImg.png"))),
          child: Padding(
            padding: EdgeInsets.only(top: 100.0, left: 20),
            child: Column(
              children: <Widget>[
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: 6,
                  itemBuilder: (context, index) =>
                      generalWidget(icons[index], text[index]),
                ),
                SizedBox(
                  height: 20,
                ),
                // Text("this is my Portfolio")
                const Row(
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1331&q=80'),
                      radius: 50,
                    ),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(left: 0, right: 35),
                          child: Text(
                            "RISHU RAJ",
                            style: TextStyle(
                                fontFamily: "Aquire",
                                color: Color.fromRGBO(0, 0, 0, 1.0),
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            "Software Development Intern",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1.0),
                                fontSize: 16,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.school,
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(" X.Y.Z. PUBLIC SCHOOL ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 23,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.widgets,
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(" ANY PROJECTS ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.telegram,
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(" MY LOCATION ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.email,
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(" rishuraj@fitterfly.only ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 30.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.phone,
                              size: 40,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 20),
                              child: Text(" 99776668855 ",
                                  style: TextStyle(
                                      color: Color.fromRGBO(0, 0, 0, 1.0),
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(11),
                  child: Text(
                      "Lorem Ips industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five",
                      style: TextStyle(
                          color: Color.fromRGBO(0, 0, 0, 1.0),
                          fontSize: 16,
                          fontWeight: FontWeight.bold)),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 30),
                  child: Text(
                    "ABOUT ME",
                    style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1.0),
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

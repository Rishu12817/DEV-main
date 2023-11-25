import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'SignUpScreen.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key, required String title});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade700,
            title: const Center(
              child: Text(
                "E-kart Logo",
                style: TextStyle(
                    color: Colors.white,
                    // fontFamily: FontFamily.Cousine,
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 70, bottom: 10, left: 20),
                  child: Text(
                    "Welcome to Ekart",
                    style: TextStyle(
                      // color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 20),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    obscureText: false,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 2, color: Colors.blue)),
                        // icon: Icon(Icons.login_outlined),
                        // iconColor: Colors.white,
                        labelText: ("User Email"),
                        labelStyle: TextStyle(
                          // color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 0, bottom: 20, right: 20, left: 20),
                  child: TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        // icon: Icon(Icons.password),
                        // iconColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                            BorderSide(width: 2, color: Colors.blue)),
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          // color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14)),
                  ),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 0, bottom: 10, left: 30, right: 30),
                      child: RichText(
                        text: const TextSpan(
                          text: ' *by continuing, you agree to ',
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                          children: [
                            TextSpan(
                              text: 'R-Enterprise\'s ',
                              style: TextStyle(
                                color: Colors.grey,
                                // backgroundColor: Colors.teal,
                                // fontSize: 10,
                              ),
                            ),
                            TextSpan(
                              text: ' Terms of use',
                              style: TextStyle(
                                color: Colors.blue,
                                // fontFamily: 'courier',
                                fontSize: 10,
                              ),
                            ),
                            TextSpan(
                              text: ' and  ',
                              style: TextStyle(
                                // fontStyle: FontStyle.italic,
                                color: Colors.grey,
                                fontSize: 10,
                              ),
                            ),
                            TextSpan(
                              text: 'Privacy Policy ',
                              style: TextStyle(
                                // fontStyle: FontStyle.italic,
                                color: Colors.blue,
                                fontSize: 10,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 0, right: 20, left: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          /// use Navigator.push
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          elevation: 3,
                        ),
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            // side: BorderSide(color: Colors.yellow, width: 5),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 10, bottom: 0, right: 20, left: 20),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()));
                        },
                        style: const ButtonStyle(
                          elevation: MaterialStatePropertyAll(3),
                          backgroundColor:
                          MaterialStatePropertyAll(Colors.white),
                        ),
                        child: const Text("Sign Up",
                            style: TextStyle(
                              color: Colors.blue,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

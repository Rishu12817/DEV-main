import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:yellow_ekart/ui/auth/signup_screen.dart';
import 'package:yellow_ekart/widgets/round_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _formField = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: const Text(
              'Login',
              style: TextStyle(
                  // color: Color.fromARGB(255, 0, 0, 0),
                  // fontSize: 30,
                  ),
            ),
          ),
          automaticallyImplyLeading: false,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text(
            //         '',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //           fontSize: 30.0,
            //           fontWeight: FontWeight.bold,
            //         ),
            //       ),
            Form(
              key: _formField,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      
                      validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                  .hasMatch(value!)) {
                            return "Please enter correct name";
                          } else {
                            return null;
                          }
                        },
                      controller: emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Email",
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      validator: (text) {
                          if (text == null || text.isEmpty) {
                            return 'Please enter correct Password';
                          }
                          return null;
                        },
                      obscureText: true,
                      keyboardType: TextInputType.text,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: "Enter Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Icon(Icons.remove_red_eye),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
                    padding: const EdgeInsets.only(top:50,bottom: 50, right: 10, left: 10),
                    child: RoundBotton(
                      title: "Log In",
                      onTap: () {
                        if (_formField.currentState!.validate()) {
                                const snackBar = SnackBar(
                                  content: Text("Submitting form"),
                                );
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(snackBar);
    
                                Timer(Duration(seconds: 2), () {
                                  Navigator.pop(context);
                                });
                              }
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                      ),
                      TextButton(onPressed: () { 
                        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupScreen()));
                      },
                      child: 
                      Text("Sign Up",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                      ),),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}

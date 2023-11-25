import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  // final _formKey = GlobalKey<FormState>();

  // FirebaseAuth _auth = FirebaseAuth.instance;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        var nameText = TextEditingController();
        var emailText = TextEditingController();
        var phoneText = TextEditingController();
        var passText1 = TextEditingController();
        // var passText2 = TextEditingController();
        final formKey = GlobalKey<FormState>();

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
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
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 70, bottom: 10, left: 20),
                    child: Text(
                      "Create a E-kart Account",
                      style: TextStyle(
                          // color: Colors.white,
                          fontWeight: FontWeight.normal,
                          fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 20.0, bottom: 15, right: 20, left: 20),
                    child: TextFormField(
                      controller: nameText,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue)),
                        // icon: Icon(Icons.login_outlined),
                        // iconColor: Colors.white,
                        labelText: ("User Name"),
                        labelStyle: TextStyle(
                            // color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[a-z A-Z]+$').hasMatch(value!)) {
                          return "Please enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 10, right: 20, left: 20),
                    child: TextFormField(
                      controller: emailText,
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
                            fontSize: 14),
                      ),
                      validator: (value) {
                        if (value!.isEmpty ||
                            !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                .hasMatch(value!)) {
                          return "Please enter correct name";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 10, right: 20, left: 20),
                    child: TextFormField(
                      controller: phoneText,
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.blue)),
                        // icon: Icon(Icons.login_outlined),
                        // iconColor: Colors.white,
                        labelText: ("Phone No."),
                        labelStyle: TextStyle(
                            // color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 14),
                      ),
                      validator: (valuee) {
                        if (valuee!.isEmpty ||
                            !RegExp(r'^([0-9]{10,12}$)').hasMatch(valuee!)) {
                          return "Please enter correct phone no.";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 0.0, bottom: 10, right: 20, left: 20),
                    child: TextFormField(
                      controller: passText1,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // icon: Icon(Icons.password),
                          // iconColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  width: 2,
                                  color:
                                      const Color.fromARGB(255, 26, 54, 78))),
                          labelText: 'Password',
                          labelStyle: TextStyle(
                              // color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14)),
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Text is empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 5.0, bottom: 10, right: 20, left: 20),
                    child: TextFormField(
                      controller: passText1,
                      obscureText: true,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          // icon: Icon(Icons.password),
                          // iconColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 2, color: Colors.blue)),
                          labelText: 'Re-Enter Password',
                          labelStyle: TextStyle(
                              // color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 14)),
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return 'Text is empty';
                        }
                        return null;
                      },
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 0, bottom: 10, left: 30, right: 30),
                        child: RichText(
                          text: const TextSpan(
                            text:
                                ' *by clicking on Create Account, you agree to ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                            ),
                            children: [
                              TextSpan(
                                text: 'R-Enterprise\'s   ',
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
                            if (formKey.currentState!.validate()) {


                        //       _auth.createUserWithEmailAndPassword(
                        // email: emailText.text.toString(), 
                        // password: passText1.text.toString()
                        // );




                              final snackBar = SnackBar(
                                content: Text("Submitting form"),
                              );
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(snackBar);
                              Timer(Duration(seconds: 2), () {
                                Navigator.pop(context);
                              });
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            elevation: 3,
                          ),
                          child: const Text(
                            "Create a new Account",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Center(child: Text("- - - - - - Or - - - - - - -")),
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
                            Navigator.pop(context);
                          },
                          style: const ButtonStyle(
                            elevation: MaterialStatePropertyAll(3),
                            backgroundColor:
                                MaterialStatePropertyAll(Colors.white),
                          ),
                          child: const Text("Already have aAccount",
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
          ),
        );
      },
    );
  }
}

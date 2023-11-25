import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.pinkAccent,
            appBar: AppBar(
              backgroundColor: Colors.pink,
              title: const Text("Yoga & Meditation"),
              leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () {
                  // Handle back button press
                },
              ),
            ),
            body: SingleChildScrollView(
              child: Container(
                height: 100.h,
                width: 100.w,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      "https://user-images.githubusercontent.com/62838398/246745829-d6867c38-4250-4074-b765-1b59d101ca84.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  children: [

                    const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment:  CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 40.0),
                          child:
                            Column(
                              children: [
                                Text(
                                  "Yoga",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "&",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Meditation",
                                  style:
                                  TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            )
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only( top : 400),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        // mainAxisSize: MainAxisSize.max,
                        // crossAxisAlignment: CrossAxisAlignment.value,
                        // crossAxisSize: CrossAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              height: 5.h,
                              width: 30.w,
                              child: ElevatedButton(
                                style:
                                ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.pinkAccent), // Set the background color
                                  ),
                                onPressed: () {
                                  // Handle sign up button press
                                },
                                child: const Text('Sign Up'),
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Padding(
                            padding: const EdgeInsets.all(20),
                            child: SizedBox(
                              height: 5.h,
                              width: 30.w,
                              child: ElevatedButton(
                                style:
                                ButtonStyle(
                                  backgroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set the background color
                                ),
                                onPressed: () {
                                  // Handle login button press
                                },
                                child: const Text('Login',
                                  style:
                                  TextStyle(
                                    color: Colors.pinkAccent,
                                    // fontSize: 30,
                                    // fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

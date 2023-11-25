import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const profileImage =
      'https://www.example.com/profile_image.jpg'; // Replace with your own profile image URL

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Instagram Profile Header'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(profileImage),
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'User name',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Bio',
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                    ElevatedButton(
                      onPressed: () {
                        // Handle Edit Profile button press
                      },
                      child: const Text('Edit Profile'),
                    ),
                  ],
                ),
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Posts',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '123',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Followers',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '456',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          'Following',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '789',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),





              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        GridView.count(
                          primary: false,
                          shrinkWrap: true,
                          padding: const EdgeInsets.all(20),
                          crossAxisSpacing: 10,
                          mainAxisSpacing: 10,
                          crossAxisCount: 2,
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[100],
                              child: const Text(
                                  "He'd have you all unravel at the"),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[200],
                              child: const Text('Heed not the rabble'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[300],
                              child: const Text('Sound of screams but the'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[400],
                              child: const Text('Who scream'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[500],
                              child: const Text('Revolution is coming...'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[600],
                              child: const Text('Revolution, they...'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[100],
                              child: const Text(
                                  "He'd have you all unravel at the"),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[200],
                              child: const Text('Heed not the rabble'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[300],
                              child: const Text('Sound of screams but the'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[400],
                              child: const Text('Who scream'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[500],
                              child: const Text('Revolution is coming...'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[600],
                              child: const Text('Revolution, they...'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[100],
                              child: const Text(
                                  "He'd have you all unravel at the"),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[200],
                              child: const Text('Heed not the rabble'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[300],
                              child: const Text('Sound of screams but the'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[400],
                              child: const Text('Who scream'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[500],
                              child: const Text('Revolution is coming...'),
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              color: Colors.teal[600],
                              child: const Text('Revolution, they...'),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),






            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        // A flexible app bar
        const SliverAppBar(
          children: [

    ]
          title: Text('App Bar'),
          expandedHeight: 200,
          pinned: true,

        ),
        // Uses the remaining space
        SliverFillRemaining(
          // Renders a scrollable list
          child: ListView.builder(
            itemBuilder: (context, index) => ListTile(
              title: Text(
                'Text $index',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
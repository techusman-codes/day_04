import 'package:day04/circle.dart';
import 'package:day04/square.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List _post = [
    "Post 1",
    "Post 2",
    "Post 3",
    "Post 4",
  ];
  final List _story = [
    "Story 1",
    "Story 2",
    "Story 3",
    "Story 4",
    "Story 5",
  ];
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            height: 150,
            child: ListView.builder(
                itemCount: _story.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCircle(
                    child: _story[index],
                  );
                })),
        Expanded(
          child: ListView.builder(
              itemCount: _post.length,
              itemBuilder: (context, index) {
                return MySquare(
                  child: _post[index],
                );
              }),
        ),
      ],
    ));
  }
}

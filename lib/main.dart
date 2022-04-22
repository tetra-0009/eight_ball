import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blue.shade900,
        ),
        body: balls(),
      ),
    ),
  );
}

class balls extends StatefulWidget {
  const balls({Key? key}) : super(key: key);

  @override
  State<balls> createState() => _ballsState();
}

class _ballsState extends State<balls> {
  int ball = 1;

  void changeball() {
    setState(() {
      ball = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                changeball();
              },
              child: Image.asset('images/ball$ball.png'),
            ),
          ),
        ],
      ),
    );
  }
}

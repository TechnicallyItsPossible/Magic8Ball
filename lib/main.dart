import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Text('Ask me anything'),
          backgroundColor: Colors.blue[800],
        ),
        body: eball(),
      ),
    ),
  );
}

class eball extends StatefulWidget {
  @override
  _eballState createState() => _eballState();
}

class _eballState extends State<eball> {
  int ball = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        flex: 1,
        child: FlatButton(
          onPressed: () {
            setState(() {
              Random random = new Random();
              ball = random.nextInt(5) + 1;
            });
          },
          child: Image.asset('images/ball$ball.png'),
        ),
      ),
    );
  }
}

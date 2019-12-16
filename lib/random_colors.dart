import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  _ChangeColors createState() => _ChangeColors();
}

class _ChangeColors extends State<MyApp> {

  List colors = [Colors.red, Colors.green,
    Colors.blue, Colors.yellow,
    Colors.brown, Colors.deepPurple,
  ];

  final random = new Random();

  int index = 0;

  void changeIndex() {
    setState(() => index = random.nextInt(3));
  }

  @override
    Widget build(BuildContext context) {
      return Center(
        child: RaisedButton(
          onPressed: () => changeIndex(),
          child: Text('Click me'),
          color: colors[index],
        ),
      );
  }
}
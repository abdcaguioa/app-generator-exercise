import 'package:flutter/material.dart';
import 'dart:math';
import 'package:english_words/english_words.dart';

//void main() => runApp(RandomButton());

void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}


class _MyAppState extends State<MyApp>{
  String namePairText = '';

  void randomName(){
    //print('$namePair');
    setState(() {  namePairText = WordPair.random().toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Company Name Generator'),
        backgroundColor: Colors.red,
      ),

      persistentFooterButtons: <Widget>[
        IconButton(
            icon: Icon(Icons.add),
            onPressed: () => randomName()
        ),
      ],


      body:  Container(
        padding: EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Text('$namePairText'),
            ],
          ),
        ),
      ),


    );
  }
}






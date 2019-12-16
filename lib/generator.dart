import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';


void main(){
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}


class _State extends State<MyApp>{

  void _onClick(String value) => setState(() => RandomWords());

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Company Name Generator'),
        backgroundColor: Colors.red,
      ),
      persistentFooterButtons: <Widget>[
        new IconButton(
            icon: new Icon(Icons.add),
            onPressed: () => _onClick('$RandomWords()')
        ),
      ],
      body: new Container(
        padding: new EdgeInsets.all(32.0),
        child: new Center(
          child: new Column(
            children: <Widget>[
              new RandomWords()
            ],
          ),
        ),
      ),
    );
  }
}

class RandomWordsState extends State<RandomWords> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}


class RandomWords extends StatefulWidget{
  RandomWordsState createState() => RandomWordsState();

}
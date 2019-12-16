import 'package:flutter/material.dart';
import 'dart:math';
import 'package:english_words/english_words.dart';

void main() {
  runApp(MaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _LibreFood createState() => new _LibreFood();
}


class _LibreFood extends State<MyApp> {

    List <String> description = ['Magpapa-donut at kape \n' , 'Magjo-joke \n', 'Magbu-budots dance? \n',
    'Magpapa-pizza \n', 'Magpapa-inom \n', 'Magpapa-buffet \n'];

    List <String>  names = ['si Jon \n', 'si Jon \n', 'si Edric \n' , 'si Jasmin \n' , 'si Alfred \n' , 'si Jon \n', 'si Jon \n', 'si JD \n' , 'si Ms. Jen \n', 'si Majan \n' ,
      'si Jon \n', 'si Jon \n', 'si EJ \n', 'si Levy \n', 'si Roselyn \n','si Jon \n', 'si Jon \n', 'si BoyJun \n'];

    List <String>  date = ['ngayon' , 'sa lunes' , 'sa martes' , 'sa susunod na cadence meeting' ,];

    final random  = new Random();

    //return Text(wordPair.asPascalCase);
    String displayText = '';
    String getDescription = '';
    String getNames = '';
    String getDate = '';

    void generateMessage(){
      setState(() {
        getDescription = description[random.nextInt(description.length)];
        getNames = names[random.nextInt(names.length)];
        getDate = date[random.nextInt(date.length)];
        displayText = '$getDescription $getNames $getDate';
      });
    }
    void _onClick(){
      setState(() {
        final wordPair = WordPair.random();
        displayText = wordPair.join(' ' + ' ').toString();
      });
    }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold (
      body: Column(
        children: <Widget>[
          Align(alignment: Alignment.topCenter,
            child: Container(alignment: Alignment.center, height: 100.0, width: double.infinity, //color: Colors.black87,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/ light.jpg'), fit: BoxFit.cover)),
              child: Text('Simple Generator App', textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily:  'GenghisKhan',//'Arizonia-Regular',
                  fontSize: 40.0,
                  inherit: true,
                  color: Colors.amber,
                  shadows: [
                    Shadow(offset: Offset(-1.5, -1.5), color: Colors.red),// bottomLeft
                    Shadow(offset: Offset(1.5, -1.5), color: Colors.red),// bottomRight
                    Shadow(offset: Offset(1.5, 1.5), color: Colors.white),// topRight
                    Shadow(offset: Offset(-2.5, 1.0), color: Colors.black),// topLeft
                ],
                ),
              ),
            ),
        ),
//
//        Expanded(
//          child: Container(alignment: Alignment.center, color: Colors.red,
//            child: Text('$getDescription' + " " + '$getNames' + " "+ '$getDate', textAlign: TextAlign.center,
//              style: TextStyle(fontSize: 28.0, inherit: true, fontFamily: 'Caviar_Dreams'
//            ),
//            ),
//          ),
//        ),
        Container(
          height: 500.0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(child: Container(alignment: Alignment.center, //color: Colors.grey,
                decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/bodyimage.jpg"), fit: BoxFit.fitHeight)),
                child: Text( '$displayText', textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 40.0, inherit: true, fontFamily: 'MADEGoodTimeGroteskPERSONALUSE', color: Colors.yellowAccent
                  ),
                ),
              ),
              ),
//              Expanded(child: Container(alignment: Alignment.center, color: Colors.red,
//                child: Text('$getDescription' + " " + '$getNames' + " "+ '$getDate' 'Test', textAlign: TextAlign.center,
//                  style: TextStyle(fontSize: 28.0, inherit: true, fontFamily: 'Caviar_Dreams'
//                  ),
//                ),
//              ),
//              ),
            ],
          ),
        ),


          Container(alignment: Alignment.center, height: 83.3,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/bodyimage.jpg'), fit: BoxFit.cover)),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(alignment: Alignment.center, height: 55.0, //width: double.infinity,
                  color: Colors.deepOrange, //width: 144.0,
                  child: FlatButton( color: Colors.blueAccent, textColor: Colors.yellowAccent, disabledColor: Colors.grey, disabledTextColor: Colors.yellow,
                    padding: EdgeInsets.all(15.0), splashColor: Colors.redAccent,
                    onPressed: () => _onClick(),
                    child: Text('Generate words?', style: TextStyle(fontSize: 15.0, //fontFamily: 'HennigarD'
                      color: Colors.white,
                      shadows: [
                        //Shadow(offset: Offset(-1.5, -1.5), color: Colors.red),// bottomLeft
                        //Shadow(offset: Offset(1.5, -1.5), color: Colors.red),// bottomRight
                        Shadow(offset: Offset(1.5, 1.5), color: Colors.green),// topRight
                        Shadow(offset: Offset(1.0, 1.0), color: Colors.redAccent),// topLeft
                      ],
                    ),),),),

                Container(alignment: Alignment.center, height: 55.0, //width: double.infinity,
                  color: Colors.red, //width: 144.0,
                  child: FlatButton( color: Colors.blueGrey, textColor: Colors.yellow, disabledColor: Colors.grey, disabledTextColor: Colors.brown,
                    padding: EdgeInsets.all(15.0), splashColor: Colors.pinkAccent,
                    onPressed: () => generateMessage(),
                    child: Text('   Sino ba?    ', style: TextStyle(fontSize: 15.0, //fontFamily: 'HennigarD',
                      color: Colors.yellow,
                      shadows: [
                        //Shadow(offset: Offset(-1.5, -1.5), color: Colors.red),// bottomLeft
                        //Shadow(offset: Offset(1.5, -1.5), color: Colors.red),// bottomRight
                        Shadow(offset: Offset(1.5, 1.5), color: Colors.white),// topRight
                        Shadow(offset: Offset(1.0, 1.0), color: Colors.black),// topLeft
                      ], ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
      )
    );
  }
}


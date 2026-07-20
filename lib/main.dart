import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

void main() => runApp(MyApp()); /*1*/

class MyApp extends StatelessWidget {
  /*2*/
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    final wordPair2 = WordPair.random();
    /*3*/
    return MaterialApp(
      /*4*/
      title: 'Welcome to Flutter',
      home: Scaffold(
        /*5*/
        appBar: AppBar(/*6*/ title: Text(wordPair.asPascalCase)),
        body: Center(/*7*/ child: Text(wordPair2.asPascalCase)),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true;
  runApp(MyApp());
} /*1*/

class MyApp extends StatelessWidget {
  /*2*/
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "hello world",
      home: Scaffold(
        appBar: AppBar(title: Text("hello")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text("hello", style: TextStyle(color: Colors.blue)),
              Text("hello", style: TextStyle(color: Colors.blue)),
              Text("hello", style: TextStyle(color: Colors.blue)),
              Text("hello", style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
      ),
    );
  }
}

// class RandomWordsState extends State<RandomWords> {
//   final _suggestions = <WordPair>[];
//   final _biggerFont = const TextStyle(fontSize: 18.0);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Startup Name Generator')),
//       body: _buiildSuggestions(),
//     );
//   }

//   Widget _buildRow(WordPair pair) {
//     return ListTile(title: Text(pair.asPascalCase, style: _biggerFont));
//   }

//   Widget _buiildSuggestions() {
//     return ListView.builder(
//       padding: const EdgeInsets.all(16.0),
//       itemBuilder: (context, i) {
//         if (i.isOdd) return Divider();

//         final index = i ~/ 2;
//         if (index >= _suggestions.length) {
//           _suggestions.addAll(generateWordPairs().take(10));
//         }
//         return _buildRow(_suggestions[index]);
//       },
//     );
//   }
// }

// class RandomWords extends StatefulWidget {
//   @override
//   RandomWordsState createState() => new RandomWordsState();
// }

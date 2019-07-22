import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

// import 'basedart.dart';
// import 'baseflutter.dart';

void main() {
 runApp(MyApp());
}

// 2.package
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
}

// 1.hello world
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'app title',
      home:  Scaffold(
        appBar: AppBar(
          title:  Text('bar title'),
        ),
        body:  Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}

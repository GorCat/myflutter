import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

import 'basedart.dart';
import 'baseflutter.dart';

void main() {
 runApp(MyApp());
}

// 2.package
// class RandomWords extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     new RandomWordsState();
//   }
// }
class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordsState();
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
          child: Text('Hello World'),
        ),
      ),
    );
  }
}

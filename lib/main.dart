import 'package:flutter/material.dart';
import 'package:myflutter/flutter/Widgets/1Layout.dart';

void main() {
  // /*
  // 1.runApp 函数接受给定的 Widget 并使其成为 widget 树的根。
  // 2.框架强制根 widget 覆盖整个屏幕。
  //  */
  // runApp(
  //   // 为了继承主题数据
  //   MaterialApp(
  //     title: 'Layout',
  //     home: LayoutWidgetsList(),
  //   ),
  // );
  print(greetBob(Person('Lucy')) + greetBob(Impostor()));
}

String greetBob(Person person) => person.greet('Bob');
class Person {
  final name;

  Person(this.name);

  String greet(String who) => 'Hello, $who, I am $name';
}

class Impostor implements Person {
  @override
  get name => '???';

  @override
  String greet(String who) => 'Hi, $who, do you know who I am?';
}
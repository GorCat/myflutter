// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';


import 'package:myflutter/flutter/1.Widget组件/1.widget概述.dart';
// import 'flutter/0.simpleDemo.dart';
// import 'flutter/1.Widget框架总览.dart';

void main() {
  /*
  1.runApp 函数接受给定的 Widget 并使其成为 widget 树的根。
  2.框架强制根 widget 覆盖整个屏幕。
   */
  runApp(
      // 为了继承主题数据
      MaterialApp(title: 'Layout', home: LayoutWidgetsList(),)
  );
}


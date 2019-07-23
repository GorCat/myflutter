// import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

// import 'flutter/0.simpleDemo.dart';
// import 'flutter/1.Widget框架总览.dart';

void main() {
  /*
  1.runApp 函数接受给定的 Widget 并使其成为 widget 树的根。
  2.框架强制根 widget 覆盖整个屏幕。
   */
  runApp(
      // 为了继承主题数据
      MaterialApp(title: 'base widget', home: Myscaffold(),);
      // MaterialApp(title: 'app title', home: TutorialHome()));
}

/*
  Widget描述了他们的视图再给定当前配置和状态时应该看起来想什么。
  1.widget 分为无状态的 StatelessWidget 和 StatefulWidget。
  2.widget 的主要工作是实现一个 build 函数，用于构建自身。
  
  1.一个 widget 通常由一些较低级别的 widget 组成。
  2.Flutter 框架将依次构建这些 widget, 直到构建最底层的子 widget 时，
  这些最底层的 widget 通常为 RenderObject, 它会计算并描述 widget 的几何形状。
 */

// ===== 一.基础 Widget =====

/*
1.Text: 该 widget 可以创建一个带格式的文本
 */
void aboutText() {}

/*
2.Row、Column: 这些具有弹性空间的布局类 Widget 可让您在水平（Row）和垂直（Column）
方向上创建灵活的布局。
 */
void aboutRowColumn() {}

/* 
3.Stack: 取代线性布局，Stack 允许子 widget 堆叠，你可以使用 Positioned 来定位
他们相对于 Stack 的上下左右四条边的位置。
 */
void aboutStack() {}

/*
4.Container: Container 可让您创建矩形视觉元素。Container 可以装饰为一个 
BoxDecoration，如 background、一个边框、或者一个阴影。 Container 也可以具有
边距（margins）、填充（padding）和应用于其大小的约束（containers）。另外，
 Container 可以使用矩阵再三维空间中对其进行变换。
 */

void aboutContainer() {}

class MyAppBar extends StatelessWidget {
  MyAppBar({this.title});

  final Widget title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: EdgeInsets.symmetric(horizontal: 5.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null, // null 会禁用 button
          ),
          // Expanded expands its child to fill the available space.
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class Myscaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Material 是 UI 呈现的“一张纸”
    return Material(
      // Column 是垂直方向的线性布局
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              'bar title',
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text('Hello World!'),
            ),
          ),
        ],
      ),
    );
  }
}

// ===== 二.Material 组件 =====

/*
Flutter 提供了许多 widgets，可以帮助您构建遵循 Material Design 的应用程序。
Magterial 应用程序以 MaterialApp widget 开始，改 widget 在应用程序的根部
创建了一些有用的 widget，其中包括一个 Navigator。

Navigator 管理由字符串标识的 Widget 栈(即页面路由栈)。Navigator 可以让您的
应用程序在页面之间平滑的过渡。
 */

class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          icon:  Icon(Icons.menu),
          tooltip: 'Navigation menu',
          onPressed: null,
        ),
        title: Text('Example title'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          )
        ],
      ),
      body: Center(
        child: Text('Hellow, world!'),
      ),
      floatingActionButton:  FloatingActionButton(
        tooltip: 'Add',
        child: Icon(Icons.add),
        onPressed: null,
      ),
    );
  }
}

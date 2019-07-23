
import 'package:flutter/material.dart';

/*
参考文档地址：https://api.flutter.dev/flutter/material/Scaffold-class.html

Scaffold: 支架类，用于实现 Material Design 布局结构。

Scaffold 将扩展以填充可用空间。

当设备键盘出现时，Scaffold 的弗雷 MediaQuery widget中的 
MediaQueryData.viewInsets 会发生变化，并且会重建 Scaffold。
默认情况下，Scaffold 主体会调整大小，为键盘弹出空间。

要阻止 Scaffold 在键盘弹出时调整位置，可以将 resizeToAvoidBottomInset 
设置为 false.

MediaQueryData.padding 定义了不完全可见的区域，比如 XR 的齐刘海，Scaffold
的 body 并不会因为这个值产生缩进，尽管大部分情况下，有 appBar 和 
bottomNavigationBar 时候，不需要 body 考虑缩进的问题。但是，如果 body 
也需要考虑缩进的受，可以使用 SafeArea widget 避免 body 被齐刘海遮挡。

 */

class ScaffoldApp extends StatelessWidget {

  static const String _title = 'Scaffold App';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home:MySatefulWidget(),
    );
  }
}

class MySatefulWidget extends StatefulWidget {
  MySatefulWidget({Key key}): super(key:key);

  @override
  State<StatefulWidget> createState() => _MyStatefulWidgetState();
}


class _MyStatefulWidgetState extends State<StatefulWidget> {
int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        title: Text('Scaffold Example'),
      ),
      body: Center(
        child: Text('You have pressed the button $_count times'),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 50,
        ),
      ),
      floatingActionButton:  FloatingActionButton(
        tooltip: 'Increment Counter',
        onPressed: () => setState(() {
          _count++;
        }),
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

}
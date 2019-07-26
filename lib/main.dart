import 'package:flutter/material.dart';
import 'package:myflutter/flutter/Widgets/1Layout.dart';
import 'package:myflutter/flutter/record/1simpleDemo.dart';

void main() {
  /*
  1.runApp 函数接受给定的 Widget 并使其成为 widget 树的根。
  2.框架强制根 widget 覆盖整个屏幕。
   */
  runApp(
      // 为了继承主题数据
      MaterialApp(
    title: 'Layout',
    // home: LayoutWidgetsList(),
    home: MenuList(),
  ));
}

class MenuList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MenuListState();
}

class MenuListState extends State<MenuList> {
  List<String> menuList = ['Simple Demo', 'Layout'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu List'),
      ),
      body: ListView.builder(
        itemCount: menuList.length,
        itemBuilder: ((context, i) {
          return _buildCell(context, i);
        }),
      ),
    );
  }

  Widget _buildCell(BuildContext context, int i) {
    String title = menuList[i];
    return ListTile(
      title: Text('${i + 1}.${menuList[i]}'),
      onTap: (() {
        if (title == 'Simple Demo') {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RandomWords();
          }));
        } else if (title == 'Layout') {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
            return LayoutWidgetsList();
          }));
        }
      }),
    );
  }
}

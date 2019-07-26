import 'package:flutter/material.dart';

class LayoutWidgetsList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LayoutWidgetsListState();
}

class LayoutWidgetsListState extends State<LayoutWidgetsList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Widget'),
      ),
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: ((context, i) {
          return _bullCell(i);
        }),
      ),
    );
  }

  Widget _bullCell(int i) {
    switch (i) {
      case 0:
        return _aboutAlign();
      default:
        return null;
    }
  }

  Widget formate(List<Widget> widgets, List<String> intros, String title) {
    List<Column> views = [];
    for (var i = 0; i < widgets.length; i++) {
      Widget widget = widgets[i];
      String inro = intros[i];
      views.add(
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 15, 8),
              child: Text(
                '$inro',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 12,
                ),
              ),
            ),
            Container(
              height: 120,
              width: 120,
              color: Colors.blue[50],
              child: widget,
            ),
          ],
        ),
      );
    }
    return Center(
      child: Container(
        padding: EdgeInsets.fromLTRB(15, 15, 15, 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              '$title',
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: views,
              ),
            ),
            Container(
              height: 2,
              color: Colors.grey[200],
            ),
          ],
        ),
      ),
    );
  }
  // 一.单控件布局

  // 1.Align
  Widget _aboutAlign() {
    return formate([
      Align(
        child: FlutterLogo(
          size: 60,
        ),
        alignment: Alignment.topRight, // 放置在右上角
      ),
      Align(
        child: FlutterLogo(
          size: 60,
        ),
        alignment: Alignment(-1, -1), // 放置在左上角
      ),
    ], [
      'Alignment.topRight',
      'Alignment(-1, -1)'
    ], '1.Align 对齐');
  }

  // 2.
}

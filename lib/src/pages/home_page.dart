import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final itemsOption = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
          appBar: AppBar(
            title: Text('Material App'),
          ),
          body: ListView(
            children: _setItems(),
          )),
    );
  }

  List<Widget> _setItems() {
    List<Widget> list = <Widget>[];
    for (var opt in itemsOption) {
      final itemsListTitle = ListTile(
        leading: Icon(Icons.access_alarm),
        title: Text(opt),
        subtitle: Text('Test...'),
        trailing: Icon(Icons.keyboard_arrow_right),
      );
      list.add(itemsListTitle);
      list.add(Divider());
    }
    return list;
  }
}

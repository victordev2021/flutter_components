import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar App Bar'),
        actions: <Widget>[
          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.pexels.com/photos/9852582/pexels-photo-9852582.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
              radius: 25.0,
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('VA'),
              backgroundColor: Colors.blueAccent.shade700,
            ),
          )
        ],
      ),
      body: Center(
        child: Container(
          child: Text('Hello avatar'),
        ),
      ),
    );
  }
}

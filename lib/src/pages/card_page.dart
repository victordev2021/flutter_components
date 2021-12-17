import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CardView'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20.0),
        children: <Widget>[
          _card1(),
          _card2(),
        ],
      ),
    );
  }

  Widget _card1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.blue,
            ),
            title: Text('Soy el título de la tarjeta...'),
            subtitle: Text('Soy el subtítulo de prueba.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              TextButton(
                  onPressed: () => print('Acción cancelada'),
                  child: Text('Cancelar')),
              TextButton(
                  onPressed: () => print('Acción ejecutada'),
                  child: Text('Aceptar'))
            ],
          )
        ],
      ),
    );
  }

  Widget _card2() {
    return Card(
      child: Column(
        children: <Widget>[
          FadeInImage(
            placeholder: AssetImage('assets/img/download.gif'),
            image: NetworkImage(
                'https://cdn.pixabay.com/photo/2021/12/11/15/06/northern-lights-6862969_960_720.jpg'),
            fadeInDuration: Duration(milliseconds: 800),
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.all(20.0),
            child: Text('Prueba fadein Image'),
          )
        ],
      ),
    );
  }
}

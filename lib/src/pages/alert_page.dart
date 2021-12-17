import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert App Bar'),
      ),
      body: Center(
        child: Container(
          child: ElevatedButton(
            child: Text('Show Dialog'),
            onPressed: () => _showAlert(context),
            style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple, shape: StadiumBorder()),
          ),
        ),
      ),
    );
  }

// METODOS EXTERNOS
  _showAlert(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Título'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text('Contenido de alerta'),
                FlutterLogo(
                  size: 100.0,
                )
              ],
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Cancelar')),
              TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: Text('Aceptar'))
            ],
          );
        });
    // return context;
  }
}

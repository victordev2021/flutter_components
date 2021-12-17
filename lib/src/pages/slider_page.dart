import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key? key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valueSlider = 100.00;
  bool _blockCheck = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 30.0),
        child: Column(
          children: <Widget>[
            _createSlider(),
            Divider(),
            _createImage(),
            Divider(),
            _createImage2(),
            Divider(),
            _createSwitch(),
            Divider(),
            _createCheck(),
          ],
        ),
      ),
    );
  }

  Widget _createSlider() {
    return Slider(
        activeColor: Colors.indigoAccent,
        divisions: 20,
        label: 'Visualzando el slider',
        value: _valueSlider,
        min: 10.0,
        max: 400,
        onChanged: (_blockCheck)
            ? null
            : (double value) {
                setState(() {
                  _valueSlider = value;
                });
              });
  }

  Widget _createImage() {
    return Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2021/12/11/15/06/northern-lights-6862969_960_720.jpg'),
          width: _valueSlider,
          fit: BoxFit.contain,
        )
      ],
    );
  }

  Widget _createImage2() {
    return Column(
      children: <Widget>[
        Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/9852582/pexels-photo-9852582.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
          width: _valueSlider,
          fit: BoxFit.contain,
        )
      ],
    );
  }

  Widget _createSwitch() {
    return SwitchListTile(
        title: Text('Bloquear Slider'),
        value: _blockCheck,
        onChanged: (valor) {
          setState(() {
            _blockCheck = valor;
          });
        });
  }

  Widget _createCheck() {
    return CheckboxListTile(
        title: Text('Bloquear Slider'),
        value: _blockCheck,
        onChanged: (valor) {
          setState(() {
            _blockCheck = valor!;
          });
        });
  }
}

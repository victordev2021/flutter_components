import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  TextEditingController _textController = new TextEditingController();
  String dropdownValue = 'One';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: <Widget>[
          _createInput(),
          Divider(),
          _createInputEmail(),
          Divider(),
          _createInputPassword(),
          Divider(),
          _createInputDate(context),
          Divider(),
          _createDropDown()
        ],
      ),
    );
  }

  _createInput() {
    return TextField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
        hintText: 'Escriba aquí su nombre por favor.',
        labelText: 'Nombre',
        helperText: 'Escriba solamente su nombre',
        suffixIcon: Icon(Icons.accessibility),
        // icon: Icon(Icons.account_circle)
      ),
    );
  }

  Widget _createInputEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
        hintText: 'Escriba aquí su email por favor.',
        labelText: 'Email',
        helperText: 'Escriba solamente su email',
        suffixIcon: Icon(Icons.email),
        // icon: Icon(Icons.account_circle)
      ),
    );
  }

  Widget _createInputPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
        hintText: 'Escriba aquí su password por favor.',
        labelText: 'Password',
        helperText: 'Escriba solamente su password',
        suffixIcon: Icon(Icons.lock_open),
        // icon: Icon(Icons.account_circle)
      ),
    );
  }

  Widget _createInputDate(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _textController,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(50.0)),
        hintText: 'Escriba aquí su fecha de nacimiento por favor.',
        labelText: 'Fecha nacimiento',
        helperText: 'Escriba solamente su fecha de nacimiento',
        suffixIcon: Icon(Icons.today_rounded),
        // icon: Icon(Icons.account_circle)
      ),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  _selectDate(BuildContext context) async {
    // print('Preparando calendario');
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime(2028));
    print(picked.toString());
    if (picked != null) {
      setState(() {
        dynamic _fecha = picked.toString();
        _textController.text = _fecha;
      });
    }
  }

  Widget _createDropDown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(
          width: 30.0,
        ),
        Expanded(
          child: DropdownButton<String>(
            value: dropdownValue,
            icon: const Icon(Icons.arrow_downward),
            elevation: 16,
            style: const TextStyle(color: Colors.deepPurple),
            underline: Container(
              height: 2,
              color: Colors.deepPurpleAccent,
            ),
            onChanged: (String? newValue) {
              setState(() {
                dropdownValue = newValue!;
              });
            },
            items: <String>['One', 'Two', 'Free', 'Four']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        )
      ],
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class form extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<form> {
  String _regno;
  String _room;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildReg() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Registration No.'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Registration No. is Required';
        }
      },
      onSaved: (String value) {
        _regno = value;
      },
    );
  }

  Widget _buildRoom() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Room No.'),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Room No. is Required';
        }
      },
      onSaved: (String value) {
        _room = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildReg(),
          _buildRoom(),
          SizedBox(height: 100),
          RaisedButton(
            color: Color.fromARGB(255, 92, 184, 92),
            child: Text(
              'Submit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              textAlign: TextAlign.center,
            ),
            onPressed: () {
              if (!_formKey.currentState.validate()) {
                return;
              }

              _formKey.currentState.save();

              print(_regno);
              print(_room);
            },
          )
        ],
      ),
    );
  }
}

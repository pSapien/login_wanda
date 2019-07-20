import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
          child: Column(
        children: <Widget>[
          emailField(),
          passwordField(),
          // RaisedButton(),
        ],
      )),
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'mickey@example.com',
      ),
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: '',
      ),
    );
  }

  Widget RaisedButton() {}
}

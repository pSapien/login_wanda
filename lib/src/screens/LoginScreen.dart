import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            Container(margin: EdgeInsets.only(top: 30.0)),
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 20.0)),
            submitButton(),
          ],
        ),
      ),
    );
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'mickey@example.com',
      ),
      validator: (String value) {
        if (!value.contains('@')) return 'Please enter a valid email';
      },
      onSaved: (String value) => email = value,
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: '*****',
      ),
      validator: (String value) {
        if (value.length < 4) return 'Please enter a valid password';
      },
      onSaved: (String value) => password = value,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.amber,
      onPressed: () {
        if (formKey.currentState.validate()) {
          formKey.currentState.save();
        }
      },
      child: Text('Submit'),
    );
  }
}

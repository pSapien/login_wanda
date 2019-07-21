import 'package:flutter/material.dart';

import '../blocs/Bloc.dart';

class LoginScreen extends StatelessWidget {
  final bloc = Bloc();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Container(margin: EdgeInsets.only(top: 30.0)),
          emailField(),
          passwordField(),
          Container(margin: EdgeInsets.only(top: 20.0)),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email',
        hintText: 'mickey@example.com',
        errorText: 'Please enter a valid email',
      ),
      onChanged: bloc.changeEmail,
    );
  }

  Widget passwordField() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: '*****',
        errorText: 'Please enter a valid password',
      ),
      onChanged: bloc.changePassword,
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.amber,
      onPressed: () {},
      child: Text('Submit'),
    );
  }
}

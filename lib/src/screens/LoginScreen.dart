import 'package:flutter/material.dart';

import '../blocs/Bloc.dart';
import '../blocs/Provider.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context);

    return Container(
      margin: EdgeInsets.all(20.0),
      child: Column(
        children: <Widget>[
          Container(margin: EdgeInsets.only(top: 30.0)),
          emailField(bloc),
          passwordField(bloc),
          Container(margin: EdgeInsets.only(top: 20.0)),
          submitButton(),
        ],
      ),
    );
  }

  Widget emailField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.email,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'mickey@example.com',
            errorText: snapshot.error,
          ),
          onChanged: bloc.changeEmail,
        );
      },
    );
  }

  Widget passwordField(Bloc bloc) {
    return StreamBuilder(
      stream: bloc.password,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextField(
          obscureText: true,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: '*****',
            errorText: snapshot.error,
          ),
          onChanged: bloc.changePassword,
        );
      },
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

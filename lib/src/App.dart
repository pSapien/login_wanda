import 'package:flutter/material.dart';
import 'screens/LoginScreen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Log Me In!',
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

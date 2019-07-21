import 'package:flutter/material.dart';

import 'screens/LoginScreen.dart';
import 'blocs/Provider.dart';

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Log Me In!',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}

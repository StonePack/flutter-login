import 'package:flutter/material.dart';
import 'package:login/routes/login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Demo',
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

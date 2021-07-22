import 'package:flutter/material.dart';
import 'package:login/components/background.dart';
import 'package:login/components/login.form.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Background(
      content: LoginForm(),
    );
  }
}

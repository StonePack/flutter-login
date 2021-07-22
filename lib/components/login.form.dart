import 'package:flutter/material.dart';
import 'package:login/components/login.button.dart';
import 'package:login/components/login.field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InputField(
          fieldLabel: 'Username',
        ),
        InputField(
          fieldLabel: 'Password',
          isPassword: true,
        ),
        LoginButton(),
      ],
    );
  }
}

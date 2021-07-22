import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/bloc/login.bloc.dart';
import 'package:login/components/login.button.dart';
import 'package:login/components/login.field.dart';

class LoginForm extends StatelessWidget {
  final LoginController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InputField(
          controller: c.usernameController,
          fieldLabel: 'Username',
        ),
        InputField(
          controller: c.passwordController,
          fieldLabel: 'Password',
          isPassword: true,
        ),
        LoginButton(),
      ],
    );
  }
}

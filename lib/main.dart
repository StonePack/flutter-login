import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/bloc/login.bloc.dart';
import 'package:login/routes/login.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final LoginController c = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Login Demo',
      home: Scaffold(
        body: LoginPage(),
      ),
    );
  }
}

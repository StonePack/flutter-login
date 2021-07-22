import 'package:flutter/material.dart';
import 'package:login/components/login.form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            'lib/assets/codeImage.jpg',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
          Container(
            child: LoginForm(),
          ),
        ],
      ),
    );
  }
}

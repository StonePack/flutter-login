import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/bloc/login.bloc.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({Key? key}) : super(key: key);

  @override
  _LoginButtonState createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  final LoginController c = Get.find();
  var buttonColor = Colors.purpleAccent[700];

  void onTapCancel() {
    setState(() {
      buttonColor = Colors.purpleAccent[700];
    });
  }

  void onTapDown() {
    setState(() {
      buttonColor = Colors.purple[700];
    });
  }

  void onTapUp() {
    setState(() {
      buttonColor = Colors.purpleAccent[700];
      c.login();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: buttonColor,
        border: Border.all(
          color: Colors.black,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: GestureDetector(
        onTapCancel: onTapCancel,
        onTapDown: (TapDownDetails details) {
          onTapDown();
        },
        onTapUp: (TapUpDetails details) {
          onTapUp();
        },
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 50,
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/bloc/login.bloc.dart';
import 'package:login/components/background.dart';

class SuccessPage extends StatelessWidget {
  final LoginController c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        content: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'SUCCESS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 42,
              ),
            ),
            Obx(() => Text(
                  'Token: ${c.token.value}',
                  style: TextStyle(
                    color: Colors.purple[200],
                    fontSize: 22,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

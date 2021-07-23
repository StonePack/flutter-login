import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:login/routes/success.dart';

class LoginController extends GetxController {
  RxString token = ''.obs;

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  login(BuildContext context) async {
    Uri url = Uri.parse('http://localhost:4747/login');

    try {
      var response = await http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'user': '${usernameController.text}',
          'pass': '${passwordController.text}',
        }),
      );

      Map<String, dynamic> parsedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        token.value = '${parsedResponse['token']}';
        Get.to(() => SuccessPage());
      } else {
        showSnackbar(context: context, message: '${parsedResponse['error']}');
      }
    } catch (e) {
      print(e);
      showSnackbar(context: context, message: 'Unable to connect to server');
    }
  }
}

showSnackbar({required BuildContext context, required String message}) {
  ScaffoldMessenger.of(context).clearSnackBars();
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.black45,
      behavior: SnackBarBehavior.floating,
      content: Text(
        message,
        style: TextStyle(
          color: Colors.red,
        ),
        textAlign: TextAlign.center,
      ),
      margin: EdgeInsets.all(20),
    ),
  );
}

import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class LoginController extends GetxController {
  RxString token = ''.obs;

  TextEditingController usernameController = new TextEditingController();
  TextEditingController passwordController = new TextEditingController();

  login() async {
    Uri url = Uri.parse('http://localhost:4242/api/login');

    var response = await http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json',
      },
      body: jsonEncode({
        'user': '${usernameController.text}',
        'password': '${passwordController.text}',
      }),
    );

    Map<String, dynamic> parsedResponse = jsonDecode(response.body);

    if (response.statusCode == 200) {
      token.value = parsedResponse['token'];
      // TODO: Navigate to a new page that displays the token
      // Get.to(() {});
    } else {
      // TODO: Add toast notification with error
      print('${parsedResponse['error']}');
    }
  }
}

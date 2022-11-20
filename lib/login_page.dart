import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LoginPage')),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Get.offNamed('/home');
              },
              child: const Text('Home'))),
    );
  }
}

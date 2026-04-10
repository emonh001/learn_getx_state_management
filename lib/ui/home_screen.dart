import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo.shade50,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar(
              "Hello!",
              "This is getx snack bar",
              snackPosition: .BOTTOM,
              showProgressIndicator: true,
              backgroundColor: Colors.grey,
              colorText: Colors.white,
            );
          },
          child: Text("Show SnackBar"),
        ),
      ),
    );
  }
}

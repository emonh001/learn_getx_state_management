import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/ui/second_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      backgroundColor: Colors.indigo.shade50,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(const SecondScreen(),); //Get.to() will keep the previous screen on Stack, automatically backbutton will be visible
          },
          child: Text("Go to second"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/ui/home_screen.dart';
import 'package:getx_learning/ui/second_screen.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade50,
      appBar: AppBar(title: Text("Third Screen")),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.back(); //Get.back() will remove the immediate screen from stack
              },
              child: Text("back to second"),
            ),
            ElevatedButton(
              onPressed: () {
                Get.offAll(
                  const HomeScreen(),
                ); //Get.offAll() will remove all the screen from stack
              },
              child: Text("Back to home"),
            ),
          ],
        ),
      ),
    );
  }
}

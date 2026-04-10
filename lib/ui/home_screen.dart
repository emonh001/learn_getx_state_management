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
            Get.defaultDialog(
              title: "Alert Dialog",
              titlePadding: const EdgeInsets.all(10),
              middleText: "This is middle text",
              textConfirm: "Confirm",
              textCancel: "Cancel",
              onConfirm: ()=>{Get.back(closeOverlays: true)},
              onCancel: ()=>{Get.back(closeOverlays: true)},
            );
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}

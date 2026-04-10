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
            Get.bottomSheet(
              Container(
                height: 200,
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  children: [
                    Text("Item 1"),
                    Text("Item 2"),
                    Text("Item 3"),
                    Text("Item 4"),
                    Text("Item 5"),
                    Text("Item 6"),
                  ],
                ),
              ),
            );
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/ui/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: (){
              Get.to(const ThirdScreen(),); //Get.to() will keep the previous screen on Stack, automatically backbutton will be visible
            }, child: Text("Go TO third")),
            ElevatedButton(onPressed: (){
              Get.back(); //Get.back() will remove the immediate screen from stack, You have to keep at least one screen on stack to use this method
            }, child: Text("Back to home")),
          ],
        ),
      ),
    );
  }
}

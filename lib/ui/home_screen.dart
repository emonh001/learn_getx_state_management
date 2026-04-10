import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home Screen")),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisSize: .min,
          spacing: 10,
          children: [
            ElevatedButton(onPressed: (){
              GetStorage().write("myName", "Emon Hossain");
            }, child: Text("Write Data")),
            ElevatedButton(onPressed: (){
              var myName = GetStorage().read("myName");
              Get.snackbar(myName, "My name from storage: $myName");
            }, child: Text("Read Data")),
            ElevatedButton(onPressed: (){
              GetStorage().remove("myName");
            }, child: Text("Remove Data")),
            ElevatedButton(onPressed: (){
              GetStorage().erase();
            }, child: Text("Erase Data")),
          ],
        ),
      ),
    );
  }
}

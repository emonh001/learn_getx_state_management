import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_learning/ui/home_screen.dart';


class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/", //its data type is String
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen(), transition: Transition.zoom),
      ],
    );
  }
}

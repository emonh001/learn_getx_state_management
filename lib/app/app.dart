import 'package:flutter/material.dart';
import 'package:getx_learning/ui/home_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen(),);
  }
}

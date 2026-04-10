import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_learning/state_controller/counter_state_controller.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    // create instance of the controller
    final CounterStateController controller = Get.put(CounterStateController());


    return Scaffold(
      appBar: AppBar(title: Text("Counter Screen")),
      backgroundColor: Colors.black26,
      body: Center(
        child: Column(
          mainAxisSize: .min,
          children: [
            // Wrap with Obx(Widget Function() builder, {Key? key})
            Obx(() =>Text("Counter Value: ${controller.counterValue}") ),
            Row(
              mainAxisSize: .min,
              spacing: 10,
              children: [
                ElevatedButton(onPressed: (){
                  controller.decrement();
                }, child: Text("Decrement -")),
                ElevatedButton(onPressed: (){
                  controller.increment();
                }, child: Text("Increment +")),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

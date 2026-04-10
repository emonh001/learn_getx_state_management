import 'package:get/get.dart';

class CounterStateController extends GetxController {
  var counterValue = 0.obs; //.obs for observation. For The mutable value


  void increment(){
    counterValue += 1;
  }

  void decrement(){
    counterValue -= 1;
  }


}
# Routing
### getx-routing
- In this branch will learn how to manage routing.

```Get.to(const SecondScreen(),);``` 
##### Get.to() will keep the previous screen on Stack, automatically backbutton will be visible

```Get.back();``` 
##### Get.back() will remove the immediate screen from stack, You have to keep at least one screen on stack to use this method

```Get.off();```
##### Get.off() will remove the immediate previous screen from stack. 
##### if there's have multiple screen on stack then the automatic back option will be visible

```Get.offAll();```
##### Get.offAll() will remove all the screen from stack
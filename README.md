# Learn GetX state Management

A learning resource of GetX State Management.

## Getting Started

### Step 1
- Install the package: ```flutter pub add get``` //-- this is the parent package of GetX
- Install the package: ```flutter pub add get_storage``` //-- if you need to manage storage related, 

### getx-snackbar 
- In this branch will learn how to manage or customise a snackbar using getx

#### If you want to use getx functionality in your application, you have to use
```
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // GetMaterialApp instead of MaterialApp
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}
```

```
// basic snackbar with Title and message
    Center(
        child: ElevatedButton(
          onPressed: () {
            Get.snackbar("Hello!", "This is getx snack bar"); //Customiseable getx snackbar
          },
          child: Text("Show SnackBar"),
        ),
      )
      
      // snackbar with more parameters
        Get.snackbar(
              "Hello!",
              "This is getx snack bar",
              snackPosition: .BOTTOM,
              showProgressIndicator: true,
              backgroundColor: Colors.grey,
              colorText: Colors.white
            );

```

### getx-dialog
- In this branch will learn how to manage or customise a dialog using getx
```
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
```

### getx-bottomsheet
- In this branch will learn how to manage or customise a bottom-sheet using getx
```
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              Container()
            );
          },
          child: Text("Show Dialog"),
        ),
```
- this is the main structure for bottomsheet.
#### Customised BottomSheet
```
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
```

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

# Named Routing
- You have to make one Initial Route 
```
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/", //its data type is String
      getPages: [
        GetPage(name: "/", page: () => const HomeScreen()),
        GetPage(name: "/second", page: () => const SecondScreen()),
        GetPage(name: "/third", page: () => const ThirdScreen()),
      ],
    );
```

- everything will be same, just you have to use Named after the method name.
- For example: 
- ```Get.toNamed("/second)```
- ```Get.offNamed("/third)```
- ```Get.offAllNamed("/home)```
##### You can also set screen transition animation:
```GetPage(name: "/third", page: () => const ThirdScreen(), transition: Transition.zoom),```

# GetX Storage
```GetStorage().write(key, value)```
```
              var myName = GetStorage().read("myName");
              Get.snackbar(myName, "My name from storage: $myName");
```
```GetStorage().remove("myName");```
```GetStorage().erase();```
- So called shared preferences 
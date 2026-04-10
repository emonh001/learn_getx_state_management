# Learn GetX state Management

A learning resource of GetX State Management.

## Getting Started

### Step 1
- Install the package: ```flutter pub add get``` //-- this is the parent package of GetX
- Install the package: ```flutter pub add get_storage``` //-- if you need to manage storage related, 

### getx-snackbar 
- In this branch will learn how to manage or customise a snackbar using getx

#### If you want to use getx functionality in you application, you have to use
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


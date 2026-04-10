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

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
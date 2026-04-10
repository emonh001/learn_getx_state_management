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
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Snackbar"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () {
                Get.snackbar(
                    "Snackbar Title", "This is the message snackbar will show",
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundGradient: const LinearGradient(
                        colors: [Colors.red, Colors.white70, Colors.green]),
                    isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,
                    overlayBlur: 5,
                    mainButton: TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.blue,
                      ),
                      child: const Text("Retry"),
                    ));
              },
              child: const Text("Show Snackbar")),
          ElevatedButton(
              onPressed: () {
                Get.defaultDialog(
                  title: "Dialog Title",
                  middleText: "This is middle text",
                  textCancel: "Cancel",
                  //cancelTextColor: Colors.bla,
                  textConfirm: "Confirm",
                  confirmTextColor: Colors.white,
                  onCancel: () {},
                  onConfirm: () {},
                );
              },
              child: const Text("Show Dialogue")),
          ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Wrap(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.wb_sunny_outlined),
                        title: Text("Light Theme"),
                        onTap: () => {Get.changeTheme(ThemeData.light())},
                      ),
                      ListTile(
                        leading: Icon(Icons.wb_sunny),
                        title: Text("Dark Theme"),
                        onTap: () => {Get.changeTheme(ThemeData.dark())},
                      ),
                    ],
                  ),
                );
              },
              child: Text("Bottom Sheet")),
        ],
      )),
    );
  }
}

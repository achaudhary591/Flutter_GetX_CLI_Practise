import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_examples/app/modules/state_management/views/state_management_view.dart';

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
              onPressed: () async {
                // Get.bottomSheet(
                //   StatefulBuilder(
                //       builder: (BuildContext context, StateSetter setState) {
                //     return Container(
                //       child: Wrap(
                //         children: [
                //           ListTile(
                //             onTap: () => {
                //               Get.changeTheme(ThemeData.light()),
                //               //Get.back(),
                //             },
                //             leading: const Icon(Icons.wb_sunny_outlined),
                //             title: const Text(
                //               "Light Theme",
                //             ),
                //           ),
                //           ListTile(
                //             leading: const Icon(Icons.wb_sunny),
                //             title: const Text(
                //               "Dark Theme",
                //             ),
                //             onTap: () => {
                //               Get.changeTheme(ThemeData.dark()),
                //               //Get.back(),
                //             },
                //           ),
                //         ],
                //       ),
                //     );
                //   }),
                // );

                showModalBottomSheet(
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Container(
                            child: Wrap(
                              children: [
                                ListTile(
                                  onTap: () => {
                                    Get.changeTheme(ThemeData.light()),
                                    //Get.back(),
                                  },
                                  leading: const Icon(Icons.wb_sunny_outlined),
                                  title: const Text(
                                    "Light Theme",
                                  ),
                                ),
                                ListTile(
                                  leading: const Icon(Icons.wb_sunny),
                                  title: const Text(
                                    "Dark Theme",
                                  ),
                                  onTap: () => {
                                    Get.changeTheme(ThemeData.dark()),
                                    //Get.back(),
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    });
              },
              child: const Text("Bottom Sheet")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/page1");
              },
              child: const Text("Page1")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/page2");
              },
              child: const Text("Page2")),
          ElevatedButton(
              onPressed: () {
                Get.toNamed("/state-management");
              },
              child: const Text("StateManagement")),
        ],
      )),
    );
  }
}

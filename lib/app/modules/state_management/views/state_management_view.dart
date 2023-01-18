import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/state_management_controller.dart';

class StateManagementView extends GetView<StateManagementController> {
  static var count = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateManagementView'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(() => Text(
                  "Count value is $count",
                  style: const TextStyle(fontSize: 25),
                )),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  count = count + 1;
                },
                child: const Text("Increament"))
          ],
        ),
      ),
    );
  }
  var test = count.value.obs;
}

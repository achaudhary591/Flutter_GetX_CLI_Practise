import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getx_examples/app/modules/state_management/views/state_management_view.dart';

import '../controllers/page2_controller.dart';

class Page2View extends GetView<Page2Controller> {
  Rx<StateManagementView> st = StateManagementView().obs;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page2View'),
        centerTitle: true,
      ),
      body: Center(child: Obx(() => Text("the count = ${st.value.test}"))),
    );
  }
}

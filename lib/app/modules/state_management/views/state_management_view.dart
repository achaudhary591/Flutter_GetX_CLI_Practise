import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/state_management_controller.dart';

class StateManagementView extends GetView<StateManagementController> {
  const StateManagementView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('StateManagementView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'StateManagementView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

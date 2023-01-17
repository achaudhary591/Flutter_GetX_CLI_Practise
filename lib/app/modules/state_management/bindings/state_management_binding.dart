import 'package:get/get.dart';

import '../controllers/state_management_controller.dart';

class StateManagementBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StateManagementController>(
      () => StateManagementController(),
    );
  }
}

import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/page1/bindings/page1_binding.dart';
import '../modules/page1/views/page1_view.dart';
import '../modules/page2/bindings/page2_binding.dart';
import '../modules/page2/views/page2_view.dart';
import '../modules/state_management/bindings/state_management_binding.dart';
import '../modules/state_management/views/state_management_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PAGE1,
      page: () => const Page1View(),
      binding: Page1Binding(),
    ),
    GetPage(
      name: _Paths.PAGE2,
      page: () => const Page2View(),
      binding: Page2Binding(),
    ),
    GetPage(
      name: _Paths.STATE_MANAGEMENT,
      page: () => const StateManagementView(),
      binding: StateManagementBinding(),
    ),
  ];
}

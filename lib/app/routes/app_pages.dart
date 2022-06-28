import 'package:get/get.dart';

import '../modules/app_init/bindings/app_init_binding.dart';
import '../modules/app_init/views/app_init_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/progress/bindings/progress_binding.dart';
import '../modules/progress/views/progress_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  // ignore: constant_identifier_names
  static const INITIAL = Routes.APP_INIT;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.APP_INIT,
      page: () => const AppInitView(),
      binding: AppInitBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.PROGRESS,
      page: () => const ProgressView(),
      binding: ProgressBinding(),
    ),
  ];
}

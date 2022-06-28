import 'package:get/get.dart';

import '../controllers/app_init_controller.dart';

class AppInitBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppInitController>(() => AppInitController(), fenix: true);
  }
}

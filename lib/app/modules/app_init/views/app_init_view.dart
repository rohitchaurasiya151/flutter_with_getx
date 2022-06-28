import 'package:flutter/material.dart';
import 'package:flutter_with_getx/app/modules/app_init/controllers/app_init_controller.dart';
import 'package:flutter_with_getx/app/modules/home/controllers/home_controller.dart';
import 'package:flutter_with_getx/app/modules/home/views/home_view.dart';
import 'package:flutter_with_getx/app/modules/login/controllers/login_controller.dart';
import 'package:flutter_with_getx/app/modules/login/views/login_view.dart';

import 'package:get/get.dart';

class AppInitView extends GetView<AppInitController> {
  const AppInitView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    controller.checkLocalStorage();
    Get.put(LoginController());
    Get.put(HomeController());
    return Scaffold(
      body: GetBuilder<AppInitController>(
        builder: (controller) => Center(
            child: Obx(
          () => controller.name.value.isNotEmpty
              ? const HomeView()
              : const LoginView(),
        )),
      ),
    );
  }
}

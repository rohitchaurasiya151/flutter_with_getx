import 'dart:developer';

import 'package:get/get.dart';

class HomeController extends GetxController {
  @override
  void onInit() {
    log("HomeController Init Called");
    super.onInit();
  }

  @override
  void onReady() {
    log("HomeController onReady Called");
    super.onReady();
  }

  @override
  void onClose() {
    log("HomeController onClose Called");
    super.onClose();
  }
}

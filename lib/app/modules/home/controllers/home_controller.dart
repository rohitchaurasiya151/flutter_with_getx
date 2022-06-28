import 'dart:developer';

import 'package:get/get.dart';

import '../../../data/provider.dart';

class HomeController extends GetxController with StateMixin<dynamic> {
  @override
  void onInit() {
    log("HomeController Init Called");

    Provider().getUser().then((value) {
      change(value, status: RxStatus.success());
    }, onError: (error) {
      change(null, status: RxStatus.error(error.toString()));
    });
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

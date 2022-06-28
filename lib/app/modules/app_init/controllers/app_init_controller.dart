import 'dart:developer';

import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app_constant/key_constants.dart';

class AppInitController extends GetxController {
  var name = "".obs;
  var asyncCall = false.obs;
  @override
  void onInit() {
    log("AppInitController Init Called");
    super.onInit();
  }

  @override
  void onReady() {
    log("AppInitController onReady Called");
    super.onReady();
  }

  @override
  void onClose() {
    log("AppInitController onClose Called");
    super.onClose();
  }

  checkLocalStorage() async {
    asyncCall.value = true;
    SharedPreferences sf = await SharedPreferences.getInstance();
    asyncCall.value = false;
    name.value = sf.getString(kName) ?? "";
  }
}

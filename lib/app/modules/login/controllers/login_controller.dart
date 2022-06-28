import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../app_constant/key_constants.dart';

class LoginController extends GetxController {
  var isAsyncCall = false.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  setToLocalStorage() async {
    isAsyncCall.value = true;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(kName, 'Batman');
    isAsyncCall.value = false;
  }
}

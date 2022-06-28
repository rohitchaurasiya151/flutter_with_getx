import 'package:get/get_connect/connect.dart';

class Provider extends GetConnect {
  Future<dynamic> getUser() async {
    final response = await get('https://reqres.in/api/users/2');
    if (response.status.hasError) {
      return Future.error(response.statusText!);
    } else {
      return response.body;
    }
  }
}

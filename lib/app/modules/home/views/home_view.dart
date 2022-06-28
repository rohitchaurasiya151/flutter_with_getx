import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Network Call'),
      ),
      body: controller.obx((data) {
        print(data);
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: NetworkImage(data['data']['avatar']),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Text(data['data']['email']),
              const SizedBox(
                height: 10.0,
              ),
              Text(data['data']['first_name']),
              const SizedBox(
                height: 10.0,
              ),
              Text(data['data']['last_name']),
            ],
          ),
        );
      }),
    );
  }
}

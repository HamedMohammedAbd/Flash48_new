import 'package:test_test/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RestPasswordPageController extends GetxController {
  goToForgetpasswordPage();
}

class RestPasswordPageControllerImp extends RestPasswordPageController {
  late TextEditingController passwordController;

  @override
  void onInit() {
    passwordController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }

  @override
  goToForgetpasswordPage() {
    Get.offAllNamed(
      AppRoute.forgetPassword,
    );
  }
}

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:test_test/core/constant/app_route.dart';

abstract class ForgetPasswordController extends GetxController {
  goToLoginPage();
  goToVerifyCode();
}

class ForgetPasswordControllerImp extends ForgetPasswordController {
  late TextEditingController emailController;
  GlobalKey<FormState> formState = GlobalKey<FormState>();
  @override
  void onInit() {
    emailController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  @override
  goToLoginPage() {
    Get.offAllNamed(
      AppRoute.loginPage,
    );
  }

  @override
  goToVerifyCode() {
    if (formState.currentState!.validate()) {
      Get.toNamed(
        AppRoute.verifyCode,
      );
    }
  }
}

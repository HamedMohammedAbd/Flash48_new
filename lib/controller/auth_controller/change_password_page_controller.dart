import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class ChangePasswordPageController extends GetxController {
  editPassword();
}

class ChangePasswordPageControllerImp extends ChangePasswordPageController {
  late TextEditingController nowPasswordController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  @override
  void onInit() {
    nowPasswordController = TextEditingController();
    passwordController = TextEditingController(); 
    confirmPasswordController = TextEditingController();
    super.onInit();
  }
  @override
  void dispose() {
    super.dispose();
    nowPasswordController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
  }
  @override
  editPassword() {}
}

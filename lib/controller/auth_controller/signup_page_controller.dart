import 'dart:math';

import 'package:test_test/data/data_source/remote/get_data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/constant/app_route.dart';
import '../../core/function/get_user_type.dart';
import '../../core/function/storage_user_data.dart';
import '../../data/model/admin_user_model.dart';
import '../../services/my_service.dart';

abstract class SignupPageController extends GetxController {
  showPassword();
  goToLoginPage();
  onChange(String value);
  List<String> getSuggestion(String query);
  addUser();
  createUser();
  createVerifyCode();
}

class SignupPageControllerImp extends SignupPageController {
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  late TextEditingController emailController;
  late TextEditingController phoneController;
  late TextEditingController activeController;
  late GlobalKey<FormState> formState;
  bool isPassword = true;
  bool isActive = false;
  late bool isAdmin;
  MyServices myServices = Get.find();

  late StatusRequest statusRequest;
  GetData getDataRequest = GetData(Get.find());
  @override
  void onInit() {
    isAdmin = getUserType() == "1" ? true : false;
    formState = GlobalKey<FormState>();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    activeController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    emailController.dispose();
    phoneController.dispose();
    activeController.dispose();
    super.dispose();
  }

  @override
  showPassword() {
    isPassword = !isPassword;
    update();
  }

  @override
  goToLoginPage() {
    Get.offAllNamed(AppRoute.chooseUserType);
  }

  List<String> activities = [
    "سفر و سياحة",
    "ملابس",
    "عطور",
    "مجوهرات",
    "مشروبات",
    "مطاعم و كافيهات",
    "ورد و زهور",
  ];

  @override
  List<String> getSuggestion(String query) {
    List<String> activities2 = [];
    activities2.addAll(activities);
    activities2.retainWhere(
      (element) => element.toLowerCase().contains(
            query.toLowerCase(),
          ),
    );

    return activities2;
  }

  @override
  onChange(value) {
    activeController.text = value;

    if (value.isEmpty) {
      isActive = false;
    } else {
      isActive = true;
    }

    update();
  }

  @override
  addUser() async {
    createVerifyCode();
    // statusRequest = StatusRequest.loading;
    // var response = await getDataRequest.getData(
    //   map: getUserType() == "1"
    //       ? {
    //           "user_name": usernameController.text,
    //           "user_email": emailController.text,
    //           "user_password": passwordController.text,
    //           "user_phone": phoneController.text,
    //           "user_active": activeController.text,
    //         }
    //       : {
    //           "user_name": usernameController.text,
    //           "user_email": emailController.text,
    //           "user_password": passwordController.text,
    //         },
    //   api: getUserType() == "1" ? AppApi.AdminSignup : AppApi.normalUserSIgnUp,
    // );
    // statusRequest = handlingData(response);
    // if (statusRequest == StatusRequest.success) {
    //   if (response["userFound"] == "user found") {
    //     print("user found ");
    //   }
    //   if (response["status"] == "successAdd") {
    //     print("add user success");
    //     createVerifyCode();
    //     // List items = response["data"];

    //     statusRequest = StatusRequest.success;
    //   } else if (response["status"] == "failureAdd") {
    //     print("add user failure");
    //     statusRequest = StatusRequest.none;
    //   } else {
    //     statusRequest = StatusRequest.failure;
    //   }
    // } else {
    //   statusRequest = StatusRequest.serverFailure;
    // }
    // update();
  }

  @override
  createUser() {
    if (formState.currentState!.validate()) {
      addUser();
    }
  }

  @override
  createVerifyCode() {
    int verifyCode = (Random().nextInt(9000) + 1000);
    Get.toNamed(
      AppRoute.verifyCode,
      arguments: {
        "verifyCode": verifyCode.toString(),
        "email": emailController.text,
        "sign": 1,
      },
    );
    late AdminUserModel adminUserModel;

    adminUserModel = AdminUserModel.fromJson({
      "user_id": 1,
      "user_name": "admintest",
      "user_type":
          int.tryParse(myServices.sharedPreferences.getString("userType")!),
      "user_email": "admin@gmail.com",
      "user_password": "admin",
      "user_verifycode": 0,
      "user_phone": "34567890",
      "user_active": "1",
    });
    storageUserData(null, adminUserModel);
    print("====================$verifyCode");
  }
}

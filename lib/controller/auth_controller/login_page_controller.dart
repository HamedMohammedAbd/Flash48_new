// import 'package:test_test/core/constant/app_color.dart';
// ignore_for_file: avoid_print

import 'package:test_test/core/constant/app_route.dart';
import 'package:test_test/core/function/handling_data.dart';
import 'package:test_test/core/function/snakebar_function.dart';
import 'package:test_test/data/data_source/remote/get_data.dart';
import 'package:test_test/data/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/constant/app_Api.dart';
import '../../core/function/get_user_type.dart';
import '../../core/function/storage_user_data.dart';
import '../../data/model/admin_user_model.dart';
import '../../services/my_service.dart';

abstract class LoginPageController extends GetxController {
  showPassword();
  goToSignUpPage();
  goToForgetPassword();
  goToHomePage();
  login();
}

class LoginPageControllerImp extends LoginPageController {
  late String user;
  bool isPassword = true;
  late TextEditingController usernameController;
  late TextEditingController passwordController;
  MyServices myServices = Get.find();
  late StatusRequest statusRequest;
  GetData getDataLogin = GetData(Get.find());
  late NormalUserModel normalUserModel;
  late AdminUserModels adminUserModel;
  @override
  void onInit() {
    user = getUserType();
    usernameController = TextEditingController();
    passwordController = TextEditingController();
    super.onInit();
  }

  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    passwordController.dispose();
  }

  @override
  showPassword() {
    isPassword = !isPassword;
    update();
  }

  @override
  goToSignUpPage() {
    Get.offAllNamed(
      AppRoute.signUpPage,
    );
  }

  @override
  goToForgetPassword() {
    Get.offAllNamed(
      AppRoute.forgetPassword,
    );
  }

  @override
  goToHomePage() {
    Get.offAllNamed(AppRoute.navHomeScreenPage);
    myServices.sharedPreferences.setString('step', "2");
  }

  @override
  login() async {
    goToHomePage();
    // adminUserModel = AdminUserModel.fromJson({
    //   "user_id": 1,
    //   "user_name": "admintest",
    //   "user_type":
    //       int.tryParse(myServices.sharedPreferences.getString("userType")!),
    //   "user_email": "admin@gmail.com",
    //   "user_password": "admin",
    //   "user_verifycode": 0,
    //   "user_phone": "34567890",
    //   "user_active": "1",
    // });
    // storageUserData(null, adminUserModel);
    // statusRequest = StatusRequest.loading;
    // update();
    // var response = await getDataLogin.getData(
    //   map: {
    //     "email": usernameController.text.toLowerCase().trim(),
    //     "password": passwordController.text.trim(),
    //   },
    //   api: AppApi.loginaAPI,
    // );
    // statusRequest = handlingData(response);
    // if (statusRequest == StatusRequest.success) {
    //   if (response["data"]["icon"] == "success") {
    //     print(response["data"]["data"]["user"].toString());
    //     print(response["data"]["data"]["token"].toString());
    //     myServices.sharedPreferences
    //         .setString("token", response["data"]["data"]["token"].toString());
    //     goToHomePage();
    //     adminUserModel =
    //         AdminUserModels.fromJson(response["data"]["data"]["user"]);
    //     storageUserData(null, adminUserModel);
    //   } else {
    //     Get.snackbar(
    //       "خطأ",
    //       "${response["data"]["data"]}",
    //     );
    //   }
    // } else if (statusRequest == StatusRequest.serverFailure) {
    //   print("StatusRequest.serverFailure");
    // } else if (statusRequest == StatusRequest.offlineFailure) {
    //   print("StatusRequest.offlineFailure");
    // } else if (statusRequest == StatusRequest.loading) {
    //   print("StatusRequest.loading");
    // } else {
    //   print("error I don't know about it");
    // }

    // update();
    // statusRequest = StatusRequest.loading;
    // update(); // تحديث الواجهة لإظهار حالة التحميل

    // var response = await getDataLogin.getData(
    //   map: {
    //     "email": usernameController.text.toLowerCase().trim(),
    //     "password": passwordController.text.trim(),
    //   },
    //   api: AppApi.loginaAPI,
    // );

    // statusRequest = handlingData(response);
    // update(); // تحديث الواجهة بعد معالجة البيانات

    // if (statusRequest == StatusRequest.success) {
    //   final responseData = response["data"];
    //   if (responseData["icon"] == "success") {
    //     final userData = responseData["data"]["user"];
    //     final token = responseData["data"]["token"].toString();

    //     print(userData);
    //     print(token);

    //     myServices.sharedPreferences.setString("token", token);
    //     if (userData["userType"] == "seller") {
    //       adminUserModel = AdminUserModels.fromJson(userData);
    //       storageUserData(null, adminUserModel);
    //     } else {
    //       normalUserModel = NormalUserModel.fromJson(userData);
    //       storageUserData(normalUserModel, null);
    //     }

    //     goToHomePage();
    //   } else {
    //     Get.snackbar("خطأ", responseData["data"].toString());
    //   }
    // } else {
    //   snackbarFunction(
    //     "خطأ",
    //     "$response",
    //   );
    //   print("===============================================login");
    //   print("StatusRequest: $statusRequest");
    // }

    // update(); // تحديث الواجهة بعد انتهاء العملية
  }
}

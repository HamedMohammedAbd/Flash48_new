import 'package:test_test/core/constant/app_route.dart';
import 'package:test_test/data/data_source/remote/get_data.dart';
import 'package:test_test/data/model/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
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
  late AdminUserModel adminUserModel;
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
    // statusRequest = StatusRequest.loading;
    // var response = await getDataLogin.getData(
    //   map: {
    //     "user_email": usernameController.text,
    //     "user_password": passwordController.text,
    //   },
    //   api: AppApi.loginUser,
    // );
    // statusRequest = handlingData(response);
    // if (statusRequest == StatusRequest.success) {
    //   if (response["status"] == "success") {
    //     if (response["data"] != "failure") {
    //       List items = response["data"];
    //       // user_verifycode
    //       if (items[0]["user_verifycode"] != 0) {
    //         if (items[0]["user_type"] == 1) {
    //           print("admin user =============");
    //           adminUserModel = AdminUserModel.fromJson(items[0]);
    //           StorageUserData(null, adminUserModel);
    //           print(
    //             adminUserModel.userEmail,
    //           );
    //           goToHomePage();
    //         } else {
    //           print("normal user =============");
    //           normalUserModel = NormalUserModel.fromJson(items[0]);
    //           StorageUserData(
    //             normalUserModel,
    //             null,
    //           );
    //           goToHomePage();
    //         }
    //       } else {
    //         print("not verifycode ");
    //       }
    //     }

    //     statusRequest = StatusRequest.success;
    //   } else if (response["status"] != "success") {
    //     statusRequest = StatusRequest.serverFailure;
    //   }
    // }
    // update();
  }
}

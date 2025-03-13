// ignore_for_file: avoid_print

import 'package:test_test/core/class/status_request.dart';
import 'package:test_test/core/constant/app_route.dart';
import 'package:test_test/data/data_source/remote/get_data.dart';
import 'package:get/get.dart';

abstract class VerifiyCodePageController extends GetxController {
  goToRestPassword();
  updateVerifyCode();
  onCodeChanged(String value);
}

class VerifiyCodePageControllerImp extends VerifiyCodePageController {
  late StatusRequest statusRequest;
  GetData verifyRequest = GetData(Get.find());
  late String verifyCode, email;
  String code = "";
  int page = 0;
  @override
  void onInit() {
    email = Get.arguments["email"];
    verifyCode = Get.arguments["verifyCode"];
    page = Get.arguments["sign"];

    print(email);
    super.onInit();
  }

  @override
  goToRestPassword() {
    Get.toNamed(
      AppRoute.restPasswordPage,
    );
  }

  @override
  updateVerifyCode() async {
    Get.toNamed(AppRoute.navHomeScreenPage);
    // if (code == verifyCode) {
    //   statusRequest = StatusRequest.loading;
    //   var response = await verifyRequest.getData(
    //     map: {
    //       "user_verifycode": "$verifyCode",
    //       "user_email": email,
    //       "user_type": getUserType(),
    //     },
    //     api: AppApi.updateVerifyCode,
    //   );
    //   statusRequest = handlingData(response);
    //   if (statusRequest == StatusRequest.success) {
    //     if (response["status"] == "successUpdate") {
    //       print("add user success");
    //       Get.toNamed(AppRoute.navHomeScreenPage);

    //       // List items = response["data"];

    //       statusRequest = StatusRequest.success;
    //     } else if (response["status"] == "failureUpdate") {
    //       print("add user failure");
    //       statusRequest = StatusRequest.none;
    //     } else {
    //       statusRequest = StatusRequest.failure;
    //     }
    //   } else {
    //     statusRequest = StatusRequest.serverFailure;
    //   }
    // } else {
    //   print("error in verify");
    // }
    // update();
  }

  @override
  onCodeChanged(String value) {
    code = value;
    update();
  }
}

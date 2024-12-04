import 'package:get/get.dart';

import '../core/constant/app_route.dart';
import '../services/my_service.dart';

abstract class ChooseUserTypeController extends GetxController {
  asCustomLogin(String userType, int userInt);
}

class ChooseUserTypeControllerImp extends ChooseUserTypeController {
  MyServices myServices = Get.find();
  @override
  void onInit() {
    myServices.sharedPreferences.setString("step", "1");
    super.onInit();
  }

  @override
  asCustomLogin(userType, userInt) {
    myServices.sharedPreferences.setString("userType", "$userInt");
    Get.toNamed(
      AppRoute.loginPage,
    );
  }
}

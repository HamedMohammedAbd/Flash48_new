import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/services/my_service.dart';
import 'package:get/get.dart';

import '../../core/constant/app_route.dart';
import '../../view/widget/home_widget/profile_page_design_under.dart';

abstract class ProfilePageController extends GetxController {}

class ProfilePageControllerImp extends ProfilePageController {
  MyServices myServices = Get.find();
  List<ProfilePageDesignUnder> underDesign = [
    ProfilePageDesignUnder(
      image: AppImage.password,
      text: "تعديل كلمة المرور",
      onTap: () {
        Get.toNamed(AppRoute.changePassword);
      },
    ),
    ProfilePageDesignUnder(
      image: AppImage.uploadSaleImage,
      text: "عروضي",
      onTap: () {
        Get.toNamed(
          AppRoute.offersPage,
        );
      },
    ),
    ProfilePageDesignUnder(
      image: AppImage.logOutImage,
      text: "تسجيل الخروج",
      isArrwo: false,
      onTap: () {
        Get.toNamed(AppRoute.logoutPage);
      },
    ),
  ];
  List data = [
    "الاسم كامل :",
    "الهاتف :",
    "الموقع : ",
    "البريد الالكتروني :",
  ];
  List dataInformation = [];

  @override
  void onInit() {
    dataInformation.addAll([
      myServices.sharedPreferences.getString("username"),
      myServices.sharedPreferences.getString("userPhone") ?? "3456789",
      "غزة - النصر",
      myServices.sharedPreferences.getString("userEmail"),
    ]);
    super.onInit();
  }
}

import 'package:test_test/controller/home_controller/nav_home_screen_page_controller.dart';
import 'package:test_test/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class OffersPageController extends GetxController {
  goToHomePage();
}

class OffersPageControllerImp extends OffersPageController {
  late String appBarTitle;
  NavHomeScreenPageControllerImp controller =
      Get.put(NavHomeScreenPageControllerImp());
  List offers = [];
  @override
  void onInit() {
    appBarTitle = controller.myOfferName;

    super.onInit();
  }

  @override
  goToHomePage() {
    Get.currentRoute == AppRoute.navHomeScreenPage
        ? controller.changeFirstIndex(0, null)
        : Get.back();
  }
}

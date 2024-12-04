import 'package:test_test/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class CardsDetailsPageController extends GetxController {
  goToPaymmentWayPage();
}

class CardsDetailsPageControllerImp extends CardsDetailsPageController {
  String title = "";
  @override
  void onInit() {
    super.onInit();
    title = Get.arguments["title"];
  }

  @override
  goToPaymmentWayPage() {
    Get.toNamed(AppRoute.paymentWayPage);
  }
}

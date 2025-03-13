// ignore_for_file: avoid_print

import 'package:test_test/controller/home_controller/nav_home_screen_page_controller.dart';
import 'package:test_test/core/constant/app_route.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/constant/app_Api.dart';
import '../../core/function/handling_data.dart';
import '../../data/data_source/remote/get_data.dart';
import '../../data/model/activities_model.dart';
import '../../services/my_service.dart';

abstract class MainHomeController extends GetxController {
  goToOffersPage(String appBarTitle);
  goToMenuPage();
  goToProductDetailsPage();
  getActivitiesData();
}

class MainHomeControllerImp extends MainHomeController {
  List<ActivitiesModel> activities = [];
  MyServices myServices = Get.find();
  late StatusRequest statusRequest;
  GetData getActivities = GetData(Get.find());

  @override
  void onInit() async {
    super.onInit();

    await Future.wait([
      getActivitiesData(),
    ]);
  }

  @override
  goToOffersPage(String? appBarTitle) {
    NavHomeScreenPageControllerImp controller =
        Get.put(NavHomeScreenPageControllerImp());
    // Get.toNamed(AppRoute.offersPage, arguments: {
    //   "appBarTitle": appBarTitle,
    // });

    controller.changeFirstIndex(2, appBarTitle);
  }

  @override
  goToMenuPage() {
    Get.toNamed(AppRoute.menuPage);
  }

  @override
  goToProductDetailsPage() {
    Get.toNamed(AppRoute.productDetails);
  }

  @override
  Future<void> getActivitiesData() async {
    statusRequest = StatusRequest.loading;
    var response = await getActivities.getData(
      map: {},
      api: AppApi.getActivitiesData,
      reqType: false,
    );
    statusRequest = await handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["data"]["icon"] == "success") {
        List data = response["data"]["data"];
        activities.addAll(
          data.map(
            (e) => ActivitiesModel.fromJson(e),
          ),
        );
      } else {
        print("error data ============ ");
      }
    }

    if (statusRequest == StatusRequest.success) {
    } else {
      print("error ===============");
    }

    update();
  }
}

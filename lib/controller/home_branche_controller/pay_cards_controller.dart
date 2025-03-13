// ignore_for_file: avoid_print

import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/constant/app_route.dart';
import 'package:get/get.dart';

import '../../core/class/status_request.dart';
import '../../core/constant/app_Api.dart';
import '../../core/function/handling_data.dart';
import '../../data/data_source/remote/get_data.dart';
import '../../data/model/cards_models.dart';
import '../../services/my_service.dart';

abstract class PayCardsController extends GetxController {
  goToCardDetailsPage(String title);
  getCardData();
}

class PayCardsControllerImp extends PayCardsController {
  List imageAppBar = [
    AppImage.confirm,
    AppImage.payNowImage,
    AppImage.payServiceImage,
  ];
  List<CardsModels> cards = [];
  MyServices myServices = Get.find();
  late StatusRequest statusRequest;
  GetData getCardDetails = GetData(Get.find());
  @override
  void onInit() {
    getCardData();
    super.onInit();
  }

  @override
  goToCardDetailsPage(String title) {
    Get.toNamed(
      AppRoute.cardsDetailsPage,
      arguments: {
        "title": title,
      },
    );
  }

  @override
  getCardData() async {
    statusRequest = StatusRequest.loading;
    var response = await getCardDetails.getData(
      map: {},
      api: AppApi.getAllCards,
      reqType: false,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["data"]["icon"] == "success") {
        List data = response["data"]["data"];
        cards.addAll(
          data.map(
            (e) => CardsModels.fromJson(e),
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

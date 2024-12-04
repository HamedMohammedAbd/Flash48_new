import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class PayCardsController extends GetxController {
  goToCardDetailsPage(String title);
}

class PayCardsControllerImp extends PayCardsController {
  List imageAppBar = [
    AppImage.confirm,
    AppImage.payNowImage,
    AppImage.payServiceImage,
  ];
  List<Map<String, dynamic>> cards = <Map<String, dynamic>>[
    {
      "title": "دلعني",
      "time": 3,
      "price": 99,
      "subtitle": [
        "تصميم الاعلان من فريق متخصص",
        "تصميم الاعلان من فريق متخصص",
      ],
    },
    {
      "title": "أنا بكيفي",
      "time": 3,
      "price": 199,
      "subtitle": [
        "تصميم الاعلان من فريق متخصص",
        "تصميم الاعلان من فريق متخصص",
      ],
    },
    {
      "title": "ميزني",
      "time": 5,
      "price": 499,
      "subtitle": [
        "تصميم الاعلان من فريق متخصص",
        "تصميم الاعلان من فريق متخصص",
        "تصميم الاعلان من فريق متخصص",
        "تصميم الاعلان من فريق متخصص",
        "تصميم الاعلان من فريق متخصص",
        "تصميم الاعلان من فريق متخصص",
      ],
    },
    {
      "title": "الاسر المنتجة",
      "time": 3,
      "price": 49,
      "subtitle": [
        "تصميم الاعلان من فريق متخصص",
        "تصميم الاعلان من فريق متخصص",
      ],
    },
  ];

  @override
  goToCardDetailsPage(String title) {
    Get.toNamed(
      AppRoute.cardsDetailsPage,
      arguments: {
        "title": title,
      },
    );
  }
}

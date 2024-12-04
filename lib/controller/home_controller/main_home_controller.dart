import 'package:test_test/controller/home_controller/nav_home_screen_page_controller.dart';
import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class MainHomeController extends GetxController {
  goToOffersPage(String appBarTitle);
  goToMenuPage();
  goToProductDetailsPage();
}

class MainHomeControllerImp extends MainHomeController {
  List<Map<String, String>> activities = [
    {
      "image": AppImage.earthImage,
      "text": "سياحة وسفر",
    },
    {
      "image": AppImage.clothesImage,
      "text": "ملابس",
    },
    {
      "image": AppImage.goldImage,
      "text": "مجوهرات",
    },
    {
      "image": AppImage.coffeeImage,
      "text": "قهوة",
    },
    {
      "image": AppImage.resturantsImage,
      "text": "مطاعم و مقاهي",
    },
    {
      "image": AppImage.parphanImage,
      "text": "عطور و تجميل",
    },
    {
      "image": AppImage.flowerImage,
      "text": "ورد و زهور",
    },
  ];

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
}

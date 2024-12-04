import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/constant/app_route.dart';
import 'package:get/get.dart';

abstract class MenuPageController extends GetxController {
  editProfile();
  payService();
  goToNotification();
  talkWithUs();
  logOut();
  addOffers();
}

class MenuPageControllerImp extends MenuPageController {
  List<Map<String, dynamic>> menuItems = [];
  @override
  void onInit() {
    super.onInit();
    menuItems.addAll([
      {
        "image": AppImage.personImage,
        "name": "تعديل الصفحة الشخصية",
        "onTap": () => editProfile(),
      },
      {
        "image": AppImage.payServiceImage,
        "name": "شراء خدمة",
        "onTap": () => payService(),
      },
      {
        "image": AppImage.uploadSaleImage,
        "name": "إضافة عرض",
        "onTap": () => addOffers(),
      },
      {
        "image": AppImage.notificationImage,
        "name": "الاشعارات",
        "onTap": () => goToNotification(),
      },
      {
        "image": AppImage.talkUsImage,
        "name": "تواصل معنا",
        "onTap": () => talkWithUs(),
      },
    ]);
  }

  @override
  editProfile() {
    Get.toNamed(AppRoute.editPersonalData);
  }

  @override
  payService() {
    Get.toNamed(AppRoute.cardsPage);
  }

  @override
  addOffers() {
    Get.toNamed(AppRoute.addOffers);
  }

  @override
  goToNotification() {
    Get.toNamed(AppRoute.notificationPage);
  }

  @override
  talkWithUs() {
    Get.toNamed(AppRoute.talkWithUsPage);
  }

  @override
  logOut() {
    Get.toNamed(AppRoute.logoutPage);
  }
}

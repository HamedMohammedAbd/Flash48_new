import 'package:flutter/material.dart';
import 'package:test_test/core/constant/app_image.dart';
import 'package:get/get.dart';

import '../../core/constant/app_route.dart';
import '../../core/function/height.dart';
import '../../core/function/width.dart';
import '../../view/widget/home_widget/offers_design.dart';

abstract class ProductDetailsController extends GetxController {
  goToRatingPage();
  backForwoardPage();
  userDetails();
}

class ProductDetailsControllerImp extends ProductDetailsController {
  List<Map<String, String>> shareData = [
    {
      "image": AppImage.whatsAppImage,
      "name": "واتساب",
    },
    {
      "image": AppImage.messengerImage,
      "name": "ماسنجر",
    },
    {
      "image": AppImage.twitterImage,
      "name": "X",
    },
    {
      "image": AppImage.snapshotImage,
      "name": "سنابشات",
    },
    {
      "image": AppImage.tellFriendImage,
      "name": "أخبر صديق",
    },
    {
      "image": AppImage.instagramImage,
      "name": "انستجرام",
    },
    {
      "image": AppImage.faceBookImage,
      "name": "فيس بوك",
    },
  ];
  @override
  goToRatingPage() {
    Get.toNamed(AppRoute.ratingPage);
  }

  @override
  backForwoardPage() {
    Get.back();
  }

  @override
  userDetails() {
    Get.defaultDialog(
      title: "username",
      content: Column(
        children: [
          SizedBox(
            width: width(1),
            height: height(4),
            child: OffersDesign(
              name: "usernaem",
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}

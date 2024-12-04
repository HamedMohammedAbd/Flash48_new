import 'dart:async';

import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/screen/home/main_home_page.dart';
import 'package:test_test/view/screen/home_branche_page/offers_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../view/screen/home/family_page.dart';
import '../../view/screen/home/favorite_page.dart';
import '../../view/screen/home/profile_page.dart';

abstract class NavHomeScreenPageController extends GetxController {
  changeFirstIndex(int index, String? name);
}

class NavHomeScreenPageControllerImp extends NavHomeScreenPageController {
  int firstIndex = 0;
  double left = 1;
  double firstLeft = 1;
  double raduis = 1;
  double raduis2 = 1;
  String myOfferName = "عروضي";
  List<IconData> icons = [
    Icons.home,
    Icons.favorite,
    Icons.square,
    Icons.family_restroom,
    Icons.person,
  ];
  List<Widget> pages = [
    const MainHomePage(),
    const FavoritePage(),
    const OffersPage(),
    const FamilyPage(),
    const ProfilePage(),
  ];

  @override
  void onInit() {
    firstLeft = icons.length > 4
        ? (width(icons.length + 0.0) - width((icons.length + 0.0) + 0.5)) / 2.0
        : (width(icons.length + 0.0) - width(5 + 0.0)) / 2.0;
    left = firstLeft;
    raduis = icons.length > 4 ? width((icons.length + 0.0) * 2 + 2) : width(10);
    raduis2 =
        icons.length > 4 ? width((icons.length + 0.0) * 2 + 4) : width(12);
    super.onInit();
  }

  @override
  changeFirstIndex(int index, String? name) {
    Timer(
      const Duration(milliseconds: 150),
      () {
        firstIndex = index;
        update();
        left = (width(1) * (index / icons.length)) + (firstLeft);
        myOfferName = name ?? "عروضي";

        update();
      },
    );
    myOfferName = name ?? "عروضي";
    update();
  }
}

import 'package:test_test/controller/home_branche_controller/offers_page_controller.dart';
import 'package:test_test/controller/home_controller/nav_home_screen_page_controller.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/static_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/home_branche_widget/offers_design_and_fav.dart';

class OffersPage extends GetView<OffersPageControllerImp> {
  const OffersPage({super.key});
  @override
  Widget build(Object context) {
    Get.put(OffersPageControllerImp());
    NavHomeScreenPageControllerImp controllerImp =
        Get.put(NavHomeScreenPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppFontSize.sizeAppBar,
        ),
        child: StaticAppbar(
          text: controllerImp.myOfferName,
          onTap: () => controller.goToHomePage(),
          isSearch: true,
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: width(6) - 10,
        ),
        children: [
          ...List.generate(
            5,
            (index) {
              return OffersDesignAndFav(
                isNew: index == 1 ? true : false,
              );
            },
          ),
        ],
      ),
    );
  }
}

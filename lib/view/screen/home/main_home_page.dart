import 'package:test_test/controller/home_controller/main_home_controller.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/home_widget/offers_design.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_font_size.dart';
import '../../widget/home_widget/ad_design_home_page.dart';
import '../../widget/home_widget/home_app_bar.dart';

class MainHomePage extends GetView<MainHomeControllerImp> {
  const MainHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(MainHomeControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppFontSize.sizeAppBar,
        ),
        child: const HomeAppBar(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          right: width(18.6),
          top: width(18.6),
        ),
        child: Column(
          children: [
            const AdDesignHomePage(),
            OffersDesign(
              onTap: () => controller.goToOffersPage("أقوى العروض"),
              name: "أقوى العروض",
              onTapProducr: () => controller.goToProductDetailsPage(),
            ),
            OffersDesign(
              onTap: () => controller.goToOffersPage("العروض"),
              name: "العروض",
              onTapProducr: () => controller.goToProductDetailsPage(),
            ),
          ],
        ),
      ),
    );
  }
}

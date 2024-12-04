import 'package:get/get.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/width.dart';
import 'package:flutter/material.dart';

import '../../../controller/home_controller/family_page_controller.dart';
import '../../widget/home_branche_widget/offers_design_and_fav.dart';
import '../home_branche_page/family_app_bar.dart';

class FamilyPage extends StatelessWidget {
  const FamilyPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(FamilyPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: const FamilyAppBar(
          text: "الاسر المنتجة",
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: width(6) - 10,
        ),
        children: [
          ...List.generate(
            6,
            (index) {
              return const OffersDesignAndFav();
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/static_appbar.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';

import '../../../controller/home_controller/family_page_controller.dart';

class CitiesPages extends GetView<FamilyPageControllerImp> {
  const CitiesPages({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(FamilyPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: StaticAppbar(
          controller: controller.textEditingController,
          text: "المدن",
          isBack: true,
          isSearch: true,
          onChanged: (name) => controller.searchCity(name),
        ),
      ),
      body: GetBuilder<FamilyPageControllerImp>(builder: (controller) {
        return ListView(
          padding: EdgeInsets.all(width(15)),
          children: [
            ...List.generate(
              controller.cities.length,
              (index) {
                String name = controller.cities[index];
                return ListTile(
                  onTap: () {},
                  title: TextCustom(text: name),
                );
              },
            ),
          ],
        );
      }),
    );
  }
}

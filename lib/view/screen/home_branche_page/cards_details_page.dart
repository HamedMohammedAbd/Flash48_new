import 'package:test_test/controller/home_branche_controller/cards_details_page_controller.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/static_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CardsDetailsPage extends GetView<CardsDetailsPageControllerImp> {
  const CardsDetailsPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(CardsDetailsPageControllerImp());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: ButtonCustom(
        text: "شراء البطاقة",
        onPressed: () => controller.goToPaymmentWayPage(),
        height: AppFontSize.sizeHieght40,
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: StaticAppbar(text: "تفاصيل باقة \n  ${controller.title}"),
      ),
      body: ListView(
        children: const [
          /// here we must add card details
        ],
      ),
    );
  }
}

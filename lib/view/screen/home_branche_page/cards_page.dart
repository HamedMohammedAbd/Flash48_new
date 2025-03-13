import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_branche_controller/pay_cards_controller.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/function/get_user_type.dart';
import '../../widget/home_branche_widget/card_design.dart';
import '../../widget/home_branche_widget/pay_card_appbar.dart';

class CardsPages extends GetView<PayCardsControllerImp> {
  const CardsPages({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(PayCardsControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: const PayCardAppbar(
          title: "شراء خدمة",
          pageNumber: 2,
        ),
      ),
      body: getUserType() == "1"
          ? GetBuilder<PayCardsControllerImp>(builder: (controller) {
              return ListView.builder(
                itemCount: controller.cards.length,
                padding: EdgeInsets.symmetric(
                  horizontal: width(13),
                ),
                itemBuilder: (context, index) {
                  String title = controller.cards[index].name!;
                  double price = double.parse(controller.cards[index].price!);
                  int time = controller.cards[index].duration!;
                  String subtitle = controller.cards[index].details!;
                  return CardDesign(
                    onPressed: () => controller.goToCardDetailsPage(title),
                    price: price,
                    subtitle: subtitle,
                    time: time,
                    title: title,
                  );
                },
              );
            })
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextCustom(
                      text:
                          "يجب أن يكون حسابك حساب تاجر كي تتمكن من شراء خدمة و اضافة عرض على التطبيق ",
                      fontSize: AppFontSize.size22 + 3,
                      fontWeight: FontWeight.bold,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: height(20),
                    ),
                    ButtonCustom(
                      text: "تطوير حسابي",
                      onPressed: () {},
                      height: AppFontSize.sizeHieght40,
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}

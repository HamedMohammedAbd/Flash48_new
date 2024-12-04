import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/auth_widget/text_form_field_widget.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_branche_controller/payment_way_page_controller.dart';
import '../../../core/function/height.dart';
import '../../widget/home_branche_widget/pay_card_appbar.dart';

class PaymentWayPage extends GetView<PaymentWayPageControllerImp> {
  const PaymentWayPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(PaymentWayPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: const PayCardAppbar(
          title: "ادفع الان",
          pageNumber: 1,
        ),
      ),
      body: Center(
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: SingleChildScrollView(
            padding: EdgeInsets.all(
              width(15),
            ),
            child: Column(
              children: [
                GetBuilder<PaymentWayPageControllerImp>(
                  builder: (controller) {
                    return TextFormFieldWidget(
                      controller: controller.cardNumberController,
                      hintText: "رقم الطاقة",
                      icon: Icons.credit_card_rounded,
                      onChanged: (value) => controller.changeCardNumber(value),
                      keyboardType: TextInputType.number,
                      iconSuffix: Icons.cancel_outlined,
                      showPassword: () => controller.clearCardNumber(),
                    );
                  },
                ),
                SizedBox(
                  height: height(55),
                ),
                TextFormFieldWidget(
                  controller: controller.cardUserNameController,
                  hintText: "الاسم على البطاقة",
                  icon: Icons.person_2,
                  keyboardType: TextInputType.number,
                ),
                SizedBox(
                  height: height(55),
                ),
                Row(
                  children: [
                    const Spacer(),
                    SizedBox(
                      width: width(5),
                      child: TextFormFieldWidget(
                        controller: controller.cardMMController,
                        hintText: "MM",
                        noLeading: true,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: width(5),
                      child: TextFormFieldWidget(
                        controller: controller.cardYYController,
                        hintText: "YY",
                        noLeading: true,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: width(5),
                      child: TextFormFieldWidget(
                        controller: controller.cardCVVController,
                        hintText: "CVV",
                        noLeading: true,
                        keyboardType: TextInputType.number,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
                SizedBox(
                  height: height(10),
                ),
                ButtonCustom(
                  height: AppFontSize.sizeHieght40,
                  text: "ادفع الان",
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

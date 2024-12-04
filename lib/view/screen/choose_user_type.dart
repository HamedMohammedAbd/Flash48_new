import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/choose_user_type_controller.dart';
import '../widget/choose_user_widget/choose_user_image_widget.dart';
import '../widget/public_widget/button_custom.dart';

class ChooseUserType extends GetView<ChooseUserTypeControllerImp> {
  const ChooseUserType({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ChooseUserTypeControllerImp());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const ChooseUserImageWidget(),
            ButtonCustom(
              text: 'تسجيل الدخول كتاجر',
              onPressed: () => controller.asCustomLogin(
                "تسجيل الدخول كتاجر",
                1,
              ),
            ),
            SizedBox(
              height: Get.height / 35.0416,
            ),
            ButtonCustom(
              text: 'تسجيل الدخول كزبون',
              onPressed: () => controller.asCustomLogin(
                "تسجيل الدخول كزبون",
                0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:test_test/core/function/height.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/rest_password_page_controller.dart';
import '../../../core/constant/app_font_size.dart';
import '../../widget/auth_widget/text_form_field_widget.dart';
import '../../widget/public_widget/static_appbar.dart';

class RestPasswordPage extends GetView<RestPasswordPageControllerImp> {
  const RestPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(RestPasswordPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppFontSize.sizeAppBar,
        ),
        child: StaticAppbar(
          text: 'انشاء  كلمة المرور',
          onTap: () => controller.goToForgetpasswordPage(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          AppFontSize.sizeHieght40,
        ),
        child: Column(
          children: [
            TextCustom(
              text: "اعد تعيين كتابة كلمة المرور",
              fontWeight: FontWeight.w700,
              fontSize: AppFontSize.size17,
            ),
            TextFormFieldWidget(
              controller: controller.passwordController,
              hintText: "كلمة المرور",
              noLeading: true,
            ),
            TextFormFieldWidget(
              controller: controller.passwordController,
              hintText: "تأكيد كلمة المرور ",
              noLeading: true,
            ),
            SizedBox(
              height: height(15.5741),
            ),
            ButtonCustom(
              text: "حفظ",
              onPressed: () {},
              width: AppFontSize.sizeWidth181,
              height: AppFontSize.sizeHieght40,
            ),
          ],
        ),
      ),
    );
  }
}

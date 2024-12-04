import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/auth_widget/text_form_field_widget.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/change_password_page_controller.dart';
import '../../../core/constant/app_font_size.dart';
import '../../widget/public_widget/static_appbar.dart';

class ChangePasswordPage extends GetView<ChangePasswordPageControllerImp> {
  const ChangePasswordPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ChangePasswordPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: const StaticAppbar(
          text: "تعديل كلمة المرور",
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: width(8.5),
          ),
          child: Column(
            children: [
              TextFormFieldWidget(
                controller: controller.nowPasswordController,
                hintText: "كلمة المرور الحالية",
              ),
              TextFormFieldWidget(
                controller: controller.passwordController,
                hintText: "تعديل كلمة المرور ",
              ),
              TextFormFieldWidget(
                controller: controller.confirmPasswordController,
                hintText: "تأكيد كلمة المرور ",
              ),
              SizedBox(
                height: height(19.114),
              ),
              ButtonCustom(
                text: "تعديل",
                onPressed: () => controller.editPassword(),
                width: AppFontSize.sizeWidth181,
                height: AppFontSize.sizeHieght40,
              ),
              SizedBox(
                height: height(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

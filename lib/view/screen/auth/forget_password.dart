import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/forget_password_controller.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/function/validation_function.dart';
import '../../widget/auth_widget/text_form_field_widget.dart';
import '../../widget/public_widget/static_appbar.dart';

class ForgetPassword extends GetView<ForgetPasswordControllerImp> {
  const ForgetPassword({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ForgetPasswordControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppFontSize.sizeAppBar,
        ),
        child: StaticAppbar(
          text: 'نسيان كلمة المرور',
          onTap: () => controller.goToLoginPage(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          width(7.2223),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextCustom(
              text: "ادخل بريدك الألكتروني هنا",
              fontWeight: FontWeight.w700,
              fontSize: AppFontSize.size17,
            ),
            SizedBox(
              height: height(280),
            ),
            const TextCustom(
              text: "ادخل بريدك الألكتروني  المرتبط بحسابك",
              color: AppColor.secondColor,
            ),
            SizedBox(
              height: height(32),
            ),
            Form(
              key: controller.formState,
              child: TextFormFieldWidget(
                controller: controller.emailController,
                hintText: 'البريد الالكتروني',
                icon: Icons.email_outlined,
                validator: (value) {
                  return validationFunction(
                    type: "email",
                    value: value!,
                    max: 100,
                    min: 5,
                  );
                },
              ),
            ),
            SizedBox(
              height: height(15.291),
            ),
            Center(
              child: ButtonCustom(
                onPressed: () => controller.goToVerifyCode(),
                text: "استعادة كلمة المرور",
                height: height(21.025),
                width: width(2.155),
                textSize: AppFontSize.size15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

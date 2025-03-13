// ignore_for_file: avoid_print

import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/verifiy_code_page_controller.dart';
import '../../widget/public_widget/static_appbar.dart';
import '../../widget/public_widget/text_custom.dart';

class VerifiyCodePage extends GetView<VerifiyCodePageControllerImp> {
  const VerifiyCodePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(VerifiyCodePageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppFontSize.sizeAppBar,
        ),
        child: StaticAppbar(
          text: 'نسيان كلمة المرور',
          onTap: () => Get.back(),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 28.03333333,
            ),
            TextCustom(
              text: 'الرجاء ادخال الكود المرسل الى',
              fontSize: AppFontSize.size17,
            ),
            TextCustom(
              text: controller.email,
              fontSize: AppFontSize.size17,
            ),
            SizedBox(
              height: height(16.5),
            ),
            Directionality(
              textDirection: TextDirection.ltr,
              child: OtpTextField(
                fieldHeight: height(14.2543),

                enabled: true,

                crossAxisAlignment: CrossAxisAlignment.center,
                numberOfFields: 4,
                fieldWidth: width(7.5),
                margin: EdgeInsets.symmetric(
                  horizontal: width(38.1),
                ),
                fillColor: AppColor.fillColor,
                keyboardType: TextInputType.number,
                autoFocus: true,
                alignment: Alignment.center,
                filled: true,
                borderColor: AppColor.primaryColor,
                cursorColor: AppColor.primaryColor,
                focusedBorderColor: AppColor.secondColor,
                enabledBorderColor: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(3.0),
                textStyle: TextStyle(
                  color: AppColor.primaryColor,
                  fontSize: AppFontSize.size22,
                  fontWeight: FontWeight.w700,
                ),
                // styles: otpTextStyles,
                showFieldAsBox: false,
                borderWidth: 4.0,
                onSubmit: (value) {
                  print(value);
                  controller.onCodeChanged(value);
                  controller.page == 1
                      ? controller.updateVerifyCode()
                      : controller.goToRestPassword();
                },
              ),
            ),
            SizedBox(
              height: height(12.0143),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'ارسل الكود مرة اخرى',
                style: TextStyle(
                  fontSize: Get.width / 26,
                  color: AppColor.secondColor,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            SizedBox(
              height: height(12.0143),
            ),
            ButtonCustom(
              text: "التحقق",
              onPressed: () => controller.page == 1
                  ? controller.updateVerifyCode()
                  : controller.goToRestPassword(),
              height: AppFontSize.sizeHieght40,
              width: AppFontSize.sizeWidth181,
            ),
          ],
        ),
      ),
    );
  }
}

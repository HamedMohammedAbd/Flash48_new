import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/login_page_controller.dart';
import '../../widget/auth_widget/gmail_choose.dart';
import '../../widget/auth_widget/or_design.dart';
import '../../widget/auth_widget/text_form_field_widget.dart';
import '../../widget/public_widget/static_appbar.dart';
import 'do_you_have_account.dart';

class LoginPage extends GetView<LoginPageControllerImp> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppFontSize.sizeAppBar,
        ),
        child: const StaticAppbar(
          text: "تسجيل الدخول",
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              TextFormFieldWidget(
                controller: controller.usernameController,
                hintText: 'اسم المستخدم',
                icon: Icons.person,
              ),
              GetBuilder<LoginPageControllerImp>(
                builder: (controller) => TextFormFieldWidget(
                  controller: controller.passwordController,
                  hintText: 'كلمة المرور',
                  icon: Icons.lock,
                  iconSuffix: Icons.visibility_outlined,
                  showPassword: () => controller.showPassword(),
                  obscureText: controller.isPassword,
                ),
              ),
              Container(
                width: width(1.36),
                margin: EdgeInsets.only(
                  bottom: height(64.7),
                ),
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () => controller.goToForgetPassword(),
                  child: Text(
                    "نسيت كلمة المرور؟",
                    style: TextStyle(
                      color: AppColor.forgetPassword,
                      fontSize: AppFontSize.size12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              ButtonCustom(
                onPressed: () => controller.login(),
                text: "تسجيل الدخول",
                height: height(21.025),
                width: width(2.155),
                textSize: AppFontSize.size15,
              ),
              const OrDesign(),
              const GmailChoose(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: DoYouHaveAccount(
        textOne: 'ليس لديك حساب؟ ',
        textTwo: "انشاء حساب",
        onTap: () => controller.goToSignUpPage(),
      ),
    );
  }
}

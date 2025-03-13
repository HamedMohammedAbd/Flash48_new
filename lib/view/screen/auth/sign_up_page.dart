import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/auth_widget/or_design.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/signup_page_controller.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/function/validation_function.dart';
import '../../widget/auth_widget/choose_activity.dart';
import '../../widget/auth_widget/gmail_choose.dart';
import '../../widget/auth_widget/text_form_field_widget.dart';
import '../../widget/public_widget/static_appbar.dart';
import 'do_you_have_account.dart';

class SignUpPage extends GetView<SignupPageControllerImp> {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SignupPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppFontSize.sizeAppBar,
        ),
        child: StaticAppbar(
          text: 'انشاء حساب',
          onTap: () => controller.goToLoginPage(),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: controller.formState,
                child: Column(
                  children: [
                    TextFormFieldWidget(
                      controller: controller.usernameController,
                      hintText: 'اسم المستخدم',
                      icon: Icons.person,
                      validator: (value) {
                        return validationFunction(
                          max: 30,
                          min: 3,
                          type: "username",
                          value: value!,
                        );
                      },
                    ),
                    GetBuilder<SignupPageControllerImp>(
                      builder: (controller) => TextFormFieldWidget(
                        controller: controller.passwordController,
                        hintText: 'كلمة المرور',
                        icon: Icons.lock,
                        iconSuffix: Icons.visibility_outlined,
                        showPassword: () => controller.showPassword(),
                        obscureText: controller.isPassword,
                        validator: (value) {
                          return validationFunction(
                            max: 30,
                            min: 8,
                            type: "username",
                            value: value!,
                          );
                        },
                      ),
                    ),
                    TextFormFieldWidget(
                      controller: controller.emailController,
                      hintText: 'البريد الالكتروني',
                      icon: Icons.email_outlined,
                      validator: (value) {
                        return validationFunction(
                          max: 30,
                          min: 3,
                          type: "email",
                          value: value!,
                        );
                      },
                    ),
                    controller.isAdmin
                        ? TextFormFieldWidget(
                            controller: controller.phoneController,
                            hintText: 'الهاتف',
                            icon: Icons.phone_android,
                            validator: (value) {
                              return validationFunction(
                                max: 30,
                                min: 3,
                                type: "phone",
                                value: value!,
                              );
                            },
                          )
                        : Container(),
                    controller.isAdmin
                        ? TextFormFieldWidget(
                            controller: controller.activeController,
                            hintText: 'النشاط',
                            icon: Icons.phone_android,
                            isImage: true,
                            image: AppImage.addActivityImage,
                            validator: (value) {
                              return validationFunction(
                                max: 30,
                                min: 3,
                                type: "username",
                                value: value!,
                              );
                            },
                            onChanged: (value) => controller.onChange(value),
                          )
                        : Container(),
                    controller.isAdmin ? const ChooseActivity() : Container(),
                    SizedBox(
                      height: height(19.56),
                    ),
                    ButtonCustom(
                      text: "انشاء",
                      onPressed: () => controller.createUser(),
                      height: height(21.025),
                      width: width(2.155),
                    ),
                    SizedBox(
                      height: height(32.3462),
                    ),
                  ],
                ),
              ),
              const OrDesign(),
              const GmailChoose(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: DoYouHaveAccount(
        textOne: 'لديك حساب؟ ',
        textTwo: "تسجيل الدخول",
        onTap: () => controller.goToLoginPage(),
      ),
    );
  }
}

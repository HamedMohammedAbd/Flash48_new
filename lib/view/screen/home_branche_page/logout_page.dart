import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/services/my_service.dart';
import 'package:test_test/view/screen/choose_user_type.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_font_size.dart';
import '../../widget/public_widget/static_appbar.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          AppFontSize.sizeAppBar,
        ),
        child: const StaticAppbar(
          text: "تسجيل الخروج",
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                height: height(5),
                width: width(1.283),
                margin: EdgeInsets.all(width(78)),
                decoration: BoxDecoration(
                  color: AppColor.primaryColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextCustom(
                      text: "هل انت متأكد من تسجيل الخروج؟",
                      fontSize: AppFontSize.size12,
                      color: AppColor.whiteColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ButtonCustom(
                          text: "نعم",
                          onPressed: () {
                            Get.offAll(const ChooseUserType());
                            MyServices myServices = Get.find();
                            myServices.sharedPreferences.setString("step", "0");
                          },
                          buttonColor: AppColor.yesOrNoColor,
                          width: width(6.27),
                          height: height(29),
                          textColor: AppColor.primaryColor,
                          raduis: 10,
                          textSize: AppFontSize.size12,
                        ),
                        SizedBox(
                          width: width(30),
                        ),
                        ButtonCustom(
                          textSize: AppFontSize.size12,
                          text: "لا",
                          onPressed: () => Get.back(),
                          buttonColor: AppColor.yesOrNoColor,
                          width: width(6.27),
                          height: height(29),
                          textColor: AppColor.primaryColor,
                          raduis: 10,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 0,
                child: InkWell(
                  onTap: () => Get.back(),
                  child: Container(
                    width: width(16.115),
                    height: width(16.115),
                    decoration: const BoxDecoration(
                      color: AppColor.logOutColor,
                      shape: BoxShape.circle,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          offset: Offset(0.0, 0.0),
                          blurRadius: 2,
                          spreadRadius: 0,
                          color: AppColor.blackColor45,
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.cancel,
                      color: AppColor.primaryColor,
                      size: width(26),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

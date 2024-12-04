import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/static_appbar.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/app_image.dart';
import '../../../core/function/get_user_type.dart';
import '../../widget/public_widget/text_custom.dart';

class AddOffersPage extends StatelessWidget {
  const AddOffersPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: const StaticAppbar(
          text: "إضافة عرض جديد",
        ),
      ),
      body: getUserType() == "1"
          ? Center(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImage.uploadImage,
                      width: width(1.875),
                    ),
                    SizedBox(
                      height: height(8),
                    ),
                    ButtonCustom(
                      text: "إضافة عرض",
                      onPressed: () {},
                      height: AppFontSize.sizeHieght40,
                      width: AppFontSize.sizeWidth181,
                    ),
                    SizedBox(
                      height: height(5),
                    ),
                  ],
                ),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextCustom(
                      text:
                          "يجب أن يكون حسابك حساب تاجر كي تتمكن من رفع عروض على التطبيق \n يمكننك تطوير حسابك من خلال الضغط على زر تطوير الحساب ",
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

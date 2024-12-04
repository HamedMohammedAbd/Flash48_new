import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/auth_widget/text_form_field_widget.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_branche_controller/edit_personal_data_controller.dart';
import '../../widget/home_widget/profile_page_appbar.dart';

class EditPersonalData extends GetView<EditPersonalDataControllerImp> {
  const EditPersonalData({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(EditPersonalDataControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: GetBuilder<EditPersonalDataControllerImp>(
          builder: (controller) {
            return ProfilePageAppbar(
              isEdit: true,
              isBack: true,
              newImage: controller.newImage,
              onTap: () async {
                await controller.editImage();
              },
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          width(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextCustom(
              text: "تعديل الاسم :",
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.size15,
            ),
            TextFormFieldWidget(
              controller: controller.nameController,
              hintText: "",
              noLeading: true,
            ),
            SizedBox(
              height: height(70),
            ),
            TextCustom(
              text: "تعديل الايميل  :",
              fontWeight: FontWeight.bold,
              fontSize: AppFontSize.size15,
            ),
            TextFormFieldWidget(
              controller: controller.emailController,
              hintText: "",
              noLeading: true,
            ),
            SizedBox(
              height: height(20),
            ),
            SizedBox(
              width: width(1),
            ),
          ],
        ),
      ),
      floatingActionButton: ButtonCustom(
        height: AppFontSize.sizeHieght40,
        text: "تعديل",
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

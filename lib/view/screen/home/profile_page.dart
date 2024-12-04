import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/home_widget/show_data_profile_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller/profile_page_controller.dart';
import '../../../core/constant/app_font_size.dart';
import '../../widget/home_widget/profile_page_appbar.dart';

class ProfilePage extends GetView<ProfilePageControllerImp> {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ProfilePageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: ProfilePageAppbar(
          name: controller.dataInformation[0],
          email: controller.dataInformation[3],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: width(13),
          vertical: height(20),
        ),
        children: [
          const ShowDataProfilePage(),
          SizedBox(
            height: height(42.05),
          ),
          ...List.generate(
            controller.underDesign.length,
            (index) {
              return controller.underDesign[index];
            },
          ),
        ],
      ),
    );
  }
}

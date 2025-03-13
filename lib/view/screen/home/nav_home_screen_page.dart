import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/function/height.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller/nav_home_screen_page_controller.dart';

class NavHomeScreenPage extends StatelessWidget {
  const NavHomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(NavHomeScreenPageControllerImp());
    return GetBuilder<NavHomeScreenPageControllerImp>(builder: (controller) {
      return Stack(
        children: [
          Scaffold(
            bottomNavigationBar: Row(
              children: [
                ...List.generate(
                  controller.icons.length,
                  (index) => Expanded(
                    flex: 1,
                    child: InkWell(
                      onTap: () => controller.changeFirstIndex(index, null),
                      child: Container(
                        decoration: const BoxDecoration(
                          color: AppColor.primaryColor,
                          // border: Border(
                          //   left: BorderSide(
                          //     width: 1,
                          //     color: AppColor.backColor,
                          //   ),
                          // ),
                        ),
                        height: height(15),
                        child: controller.firstIndex != index
                            ? Icon(
                                controller.icons[index],
                                color: AppColor.whiteColor,
                              )
                            : Container(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            body: controller.pages[controller.firstIndex],
          ),
          AnimatedPositioned(
            duration: const Duration(milliseconds: 150),
            right: controller.left,
            bottom: controller.raduis2 - 5,
            child: CircleAvatar(
              radius: controller.raduis,
              backgroundColor: AppColor.whiteColor,
              child: CircleAvatar(
                backgroundColor: AppColor.primaryColor,
                radius: controller.raduis2,
                child: Center(
                  child: Icon(
                    controller.icons[controller.firstIndex],
                    color: AppColor.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}

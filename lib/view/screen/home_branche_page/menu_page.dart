import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/back_icon.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_branche_controller/menu_page_controller.dart';

class MenuPage extends GetView<MenuPageControllerImp> {
  const MenuPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(MenuPageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(
          height(5.2),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                offset: Offset(1.0, 4.0),
                color: Color.fromARGB(62, 18, 29, 41),
                blurRadius: 4,
                spreadRadius: 0,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: width(1),
                child: BackIcon(
                  onTap: () {
                    Get.back();
                  },
                ),
              ),
              TextCustom(
                text: "القائمة",
                color: AppColor.whiteColor,
                fontSize: AppFontSize.size22,
                fontWeight: FontWeight.w700,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: width(13),
        ),
        child: Column(
          children: [
            ...List.generate(
              controller.menuItems.length,
              (index) {
                String image = controller.menuItems[index]["image"];
                String name = controller.menuItems[index]["name"];

                return Container(
                  margin: EdgeInsets.only(
                    bottom: width(40),
                    top: width(40),
                  ),
                  child: InkWell(
                    onTap: controller.menuItems[index]["onTap"],
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            CircleAvatar(
                              radius: width(16.25),
                              backgroundColor: AppColor.primaryColor,
                              child: Image.asset(
                                image,
                                width: width(16.25),
                                height: width(16.25),
                                color: AppColor.whiteColor,
                              ),
                            ),
                            SizedBox(
                              width: width(40),
                            ),
                            TextCustom(
                              text: name,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height(56.07),
                        ),
                        Container(
                          width: width(1.22642),
                          height: 1.5,
                          decoration: const BoxDecoration(
                            color: AppColor.logOutColor,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                offset: Offset(0.0, 4.0),
                                blurRadius: 4,
                                color: Color.fromARGB(46, 18, 29, 41),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            SizedBox(
              height: height(15.574),
            ),
            ButtonCustom(
              text: "تسجيل الخروج",
              onPressed: () => controller.logOut(),
              isImage: true,
              imageName: AppImage.logOutImage,
              height: AppFontSize.sizeHieght40,
              width: AppFontSize.sizeWidth181,
              imageHeight: AppFontSize.size22,
              imageWidth: AppFontSize.size22,
            ),
          ],
        ),
      ),
    );
  }
}

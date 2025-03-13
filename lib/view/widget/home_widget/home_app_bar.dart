import 'package:test_test/controller/home_controller/main_home_controller.dart';
import 'package:test_test/core/constant/app_Api.dart';
import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_font_size.dart';
import 'search_top_design.dart';

class HomeAppBar extends GetView<MainHomeControllerImp> {
  const HomeAppBar({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        AppFontSize.sizeAppBar,
      ),
      child: Container(
        height: height(3.32),
        padding: EdgeInsets.only(
          right: width(30),
        ),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20),
          ),
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(-0.003, 1),
            colors: <Color>[
              Color(0xff086A7B),
              Color(0xffF1F5FA),
              Color(0x80979B00),
            ],
            stops: <double>[0, 1, 1],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: width(30),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      controller.goToMenuPage();
                    },
                    icon: Icon(
                      Icons.list_sharp,
                      size: width(17.73),
                    ),
                  ),
                  Image.asset(
                    AppImage.logoImage,
                    width: width(10.84),
                    height: width(10.84),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: height(30),
            ),
            TextCustom(
              text: "بحث بواسطة :",
              fontSize: AppFontSize.size17,
            ),
            SizedBox(
              height: height(100),
            ),
            GetBuilder<MainHomeControllerImp>(builder: (controller) {
              return SizedBox(
                height: height(15),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.activities.length,
                  itemBuilder: (context, index) {
                    String image = controller.activities[index].image!;
                    String text = controller.activities[index].name!;
                    return SearchTopDesign(
                      text: text,
                      image:
                          "${AppApi.route}/storage/uploads/activities/$image",
                      onTap: () => controller.goToOffersPage(text),
                    );
                  },
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}

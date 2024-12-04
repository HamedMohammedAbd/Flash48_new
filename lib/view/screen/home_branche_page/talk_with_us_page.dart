import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/text_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TalkWithUsPage extends StatelessWidget {
  const TalkWithUsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextCustom(
          text: "تواصل معنا",
          color: AppColor.whiteColor,
        ),
        backgroundColor: AppColor.primaryColor,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
          color: AppColor.whiteColor,
        ),
      ),
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.send_outlined,
                color: AppColor.primaryColor,
                textDirection: TextDirection.ltr,
              ),
            ),
            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "تواصل معنا",
                  hintStyle: TextStyle(
                    color: AppColor.grayColor,
                    fontSize: AppFontSize.size12,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: AppColor.primaryColor,
                      width: 2,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: AppColor.secondColor,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: AppColor.primaryColor,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          ...List.generate(
            3,
            (index) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.topRight,
                    margin: EdgeInsets.only(
                      left: width(7),
                      right: width(50),
                      top: height(80),
                    ),
                    decoration: const BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: width(30),
                      vertical: height(90),
                    ),
                    child: const TextCustom(
                      text:
                          "اريد تقديم شكوى على متجر مش عارف شو علشان اعمل تجريب للمحادثة",
                      color: AppColor.whiteColor,
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(
                      right: width(7),
                      left: width(50),
                      top: height(80),
                    ),
                    decoration: const BoxDecoration(
                      color: AppColor.secondColor,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      horizontal: width(30),
                      vertical: height(90),
                    ),
                    child: const TextCustom(
                      text:
                          "اريد تقديم شكوى على متجر مش عارف شو علشان اعمل تجريب للمحادثة",
                      color: AppColor.whiteColor,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}

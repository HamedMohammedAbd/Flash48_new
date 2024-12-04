import 'package:get/get.dart';
import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/width.dart';
import 'package:flutter/material.dart';

import '../../../controller/home_controller/family_page_controller.dart';
import '../../../core/function/height.dart';
import '../../widget/public_widget/text_custom.dart';

class FamilyAppBar extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const FamilyAppBar({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        AppFontSize.sizeAppBar,
      ),
      child: Container(
        height: AppFontSize.sizeAppBar,
        width: width(1),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              const Spacer(),
              TextCustom(
                text: text,
                fontSize: 23,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: width(40),
                ),
                height: height(30),
                child:
                    GetBuilder<FamilyPageControllerImp>(builder: (controller) {
                  return ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...List.generate(
                        controller.cities.length,
                        (index) {
                          return Container(
                            margin: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 2,
                                  color: controller.cityChoosen == index
                                      ? AppColor.primaryColor
                                      : AppColor.primaryColor.withOpacity(0),
                                ),
                              ),
                            ),
                            child: InkWell(
                              onTap: () => controller.chooseCity(index),
                              child: TextCustom(
                                text: controller.cities[index],
                                fontSize: AppFontSize.size13,
                                color: controller.cityChoosen == index
                                    ? AppColor.primaryColor
                                    : AppColor.secondColor,
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  );
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

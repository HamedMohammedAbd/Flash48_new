import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_controller/profile_page_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/function/height.dart';
import '../../../core/function/width.dart';
import '../public_widget/text_custom.dart';

class ShowDataProfilePage extends GetView<ProfilePageControllerImp> {
  const ShowDataProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(5),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: AppColor.grayColor,
        ),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            offset: Offset(1, 4),
            blurRadius: 4,
            spreadRadius: 0,
            blurStyle: BlurStyle.normal,
            color: AppColor.grayColor,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            controller.data.length,
            (index) {
              String text = controller.data[index];
              String data = controller.dataInformation[index].toString();
              return SizedBox(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(
                        AppFontSize.size9,
                      ),
                      child: Row(
                        children: [
                          TextCustom(
                            text: text,
                            fontWeight: FontWeight.w400,
                            fontSize: AppFontSize.size12,
                          ),
                          SizedBox(
                            width: width(40),
                          ),
                          TextCustom(
                            text: data,
                            fontWeight: FontWeight.w900,
                            fontSize: AppFontSize.size12,
                          ),
                        ],
                      ),
                    ),
                    index == 3
                        ? Container()
                        : Container(
                            width: width(1),
                            height: 1,
                            decoration: const BoxDecoration(
                              color: AppColor.grayColor,
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                  offset: Offset(1, 4),
                                  blurRadius: 4,
                                  spreadRadius: 0,
                                  blurStyle: BlurStyle.solid,
                                  color: AppColor.grayColor2,
                                ),
                              ],
                            ),
                          )
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

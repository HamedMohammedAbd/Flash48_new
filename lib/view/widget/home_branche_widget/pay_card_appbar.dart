import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_branche_controller/pay_cards_controller.dart';
import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/function/width.dart';
import '../public_widget/back_icon.dart';
import '../public_widget/text_custom.dart';

class PayCardAppbar extends GetView<PayCardsControllerImp> {
  final String title;
  final int pageNumber;
  const PayCardAppbar({
    super.key,
    required this.title,
    required this.pageNumber,
  });
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        AppFontSize.sizeAppBar,
      ),
      child: Container(
        height: Get.height / 3.32,
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            BackIcon(
              onTap: () => Get.back(),
            ),
            TextCustom(
              text: title,
              fontSize: width(16.966),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(
                  3,
                  (index) {
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: width(100),
                          ),
                          height: width(7.96),
                          width: width(7.96),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: index == pageNumber
                                ? AppColor.fillColor
                                : AppColor.primaryColor,
                          ),
                          child: Container(
                            margin: EdgeInsets.all(
                              AppFontSize.size9,
                            ),
                            child: Image.asset(
                              controller.imageAppBar[index],
                              color: index == pageNumber
                                  ? AppColor.primaryColor
                                  : AppColor.whiteColor,
                            ),
                          ),
                        ),
                        Container(
                          width: index == 2 ? 0 : width(7.96),
                          height: 2,
                          decoration: BoxDecoration(
                            color: AppColor.primaryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

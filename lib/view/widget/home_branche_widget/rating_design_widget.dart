import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/constant/app_image.dart';
import '../../../core/function/height.dart';
import '../../../core/function/width.dart';
import '../public_widget/text_custom.dart';

class RatingDesignWidget extends StatelessWidget {
  const RatingDesignWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        height(84.1),
      ),
      margin: EdgeInsets.symmetric(
        vertical: height(168.2),
      ),
      height: height(5.57),
      width: width(1),
      decoration: BoxDecoration(
        color: AppColor.backColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            blurStyle: BlurStyle.normal,
            color: Color(0x121D291F),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  AppImage.rate,
                  height: height(11.52),
                  width: width(6.19),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  right: width(22.9412),
                ),
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextCustom(
                      text: "شهد شاهين",
                      fontSize: AppFontSize.size15,
                    ),
                    TextCustom(
                      text: "قبل 7 ساعات",
                      fontSize: AppFontSize.size9,
                      fontWeight: FontWeight.w400,
                      color: AppColor.secondColor,
                    ),
                  ],
                ),
              ),
              const Spacer(),
              ...List.generate(
                5,
                (index) {
                  return Icon(
                    Icons.star,
                    color: AppColor.primaryColor,
                    size: AppFontSize.size17,
                  );
                },
              ),
            ],
          ),
          SizedBox(
            height: height(40.1),
          ),
          TextCustom(
            text: "بلوزة  صوف شتوية رائعة بنفس الخامة و الجودة ",
            fontSize: AppFontSize.size12,
            fontWeight: FontWeight.w400,
          ),
        ],
      ),
    );
  }
}

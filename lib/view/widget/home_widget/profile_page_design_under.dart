import 'package:test_test/core/constant/app_image.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/function/height.dart';
import '../../../core/function/width.dart';
import '../public_widget/text_custom.dart';

class ProfilePageDesignUnder extends StatelessWidget {
  final String image, text;
  final void Function()? onTap;
  final bool? isArrwo;
  const ProfilePageDesignUnder({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
    this.isArrwo = true,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: height(100),
        ),
        padding: EdgeInsets.only(
          left: width(40),
          right: width(30),
        ),
        height: height(23.36),
        decoration: BoxDecoration(
          color: AppColor.whiteColor,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            width: 1,
            color: AppColor.grayColor,
          ),
          boxShadow: const <BoxShadow>[
            BoxShadow(
              offset: Offset(1.0, 4.0),
              blurRadius: 4,
              spreadRadius: 0,
              blurStyle: BlurStyle.normal,
              color: Colors.black26,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.all(5),
              child: Image.asset(
                image,
                width: width(11.143),
                height: width(11.143),
                color: AppColor.primaryColor,
              ),
            ),
            SizedBox(
              width: width(40),
            ),
            TextCustom(
              text: text,
              fontSize: AppFontSize.size12,
              fontWeight: FontWeight.w400,
            ),
            const Spacer(),
            isArrwo!
                ? Image.asset(
                    AppImage.threeArrowImage,
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}

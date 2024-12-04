import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';

class BackIcon extends StatelessWidget {
  final Function()? onTap;
  final Color? color;
  final String? image;
  const BackIcon({
    super.key,
    required this.onTap,
    this.color,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GestureDetector(
          onTap: onTap ?? () => Get.back(),
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: Get.width / 10,
            ),
            width: Get.width / 14.036,
            height: Get.width / 14.036,
            decoration: BoxDecoration(
              color: color ?? AppColor.whiteColor,
              shape: BoxShape.circle,
              boxShadow: const [
                BoxShadow(
                  color: AppColor.blackColor45,
                  blurRadius: 10,
                  spreadRadius: 0.2,
                  offset: Offset(1, 7),
                ),
              ],
            ),
            child: Center(
              child: Image.asset(
                image ?? AppImage.arrowImage,
                fit: BoxFit.cover,
                width: Get.width / 28.07,
                height: Get.width / 28.07,
              ),
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';

class ButtonCustom extends StatelessWidget {
  final Color? buttonColor, textColor;
  final String text;
  final double? textSize, height, width, imageWidth, imageHeight, raduis;
  final bool? isImage;
  final String? imageName;
  final void Function() onPressed;

  const ButtonCustom({
    super.key,
    this.buttonColor,
    this.textColor,
    required this.text,
    this.textSize,
    this.height,
    this.width,
    this.isImage,
    this.imageName,
    required this.onPressed,
    this.imageWidth,
    this.imageHeight,
    this.raduis,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? Get.width / 1.5,
      height: height ?? Get.height / 13.786885,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor ?? AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(raduis ?? 30),
          ),
          shadowColor: AppColor.primaryColor,
          elevation: 4.0,
        ),
        child: FittedBox(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              isImage == null
                  ? Container()
                  : Image.asset(
                      imageName!,
                      width: imageWidth,
                      height: imageHeight,
                      color: AppColor.whiteColor,
                    ),
              SizedBox(
                width: isImage == null ? 0 : Get.width / 40,
              ),
              Text(
                text,
                style: TextStyle(
                  color: textColor ?? AppColor.textColor,
                  fontSize: textSize ?? Get.width / 21.66666,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

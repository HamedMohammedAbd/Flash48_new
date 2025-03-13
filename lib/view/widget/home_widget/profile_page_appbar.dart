import 'dart:io';

import 'package:test_test/core/function/height.dart';
import 'package:test_test/view/widget/public_widget/back_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/constant/app_image.dart';
import '../../../core/function/width.dart';
// import '../public_widget/text_custom.dart';

class ProfilePageAppbar extends StatelessWidget {
  final bool? isEdit, isBack;
  final void Function()? onTap;
  final String? name, email;
  final XFile? newImage;
  const ProfilePageAppbar({
    super.key,
    this.onTap,
    this.isEdit = false,
    this.isBack = false,
    this.name,
    this.email,
    this.newImage,
  });
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
      child: Stack(
        children: [
          Positioned(
            top: -height(2.8),
            right: -width(8.125),
            left: -width(5.343),
            child: Container(
              height: width(1) * 1.3551,
              width: width(1) * 1.3551,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                //color edit
                color: const Color(0xff88B6C1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: const Offset(1.0, 4.0),
                    blurRadius: 4,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.inner,
                    color: Colors.grey.shade200,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -height(2.8),
            right: -width(8.125),
            left: -width(5.343),
            child: Container(
              height: width(1) * 1.3451,
              width: width(1) * 1.3451,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                //color edit
                color: AppColor.whiteColor,
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: Offset(1.0, 4.0),
                    blurRadius: 4,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.normal,
                    color: Color(0x0A242454),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -height(2.8),
            right: -width(8.125),
            left: -width(5.343),
            child: Container(
              height: width(1) * 1.31,
              width: width(1) * 1.31,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                //color edit
                color: Color(0xff88B6C1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    offset: Offset(1.0, 4.0),
                    blurRadius: 4,
                    spreadRadius: 0,
                    blurStyle: BlurStyle.normal,
                    color: Colors.black26,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: width(
                        9.286,
                      ),
                      backgroundColor: AppColor.primaryColor,
                      child: CircleAvatar(
                        radius: width(
                          9.8,
                        ),
                        backgroundColor: AppColor.whiteColor,
                        child: CircleAvatar(
                          radius: width(
                            10.5,
                          ),
                          backgroundImage: newImage != null
                              ? FileImage(File(newImage!.path))
                              : const AssetImage(
                                  AppImage.hamedImage,
                                ),
                        ),
                      ),
                    ),
                    isEdit!
                        ? Positioned(
                            bottom: 0,
                            right: 0,
                            child: InkWell(
                              onTap: onTap,
                              child: Container(
                                height: width(15),
                                width: width(15),
                                padding: const EdgeInsets.all(5),
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColor.primaryColor,
                                ),
                                child: const FittedBox(
                                  child: Icon(
                                    Icons.camera_alt_outlined,
                                    color: AppColor.whiteColor,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                // TextCustom(text: name ?? ""),
                // TextCustom(text: email ?? ""),
              ],
            ),
          ),
          isBack!
              ? Positioned(
                  left: 0,
                  top: height(20),
                  child: BackIcon(
                    onTap: () => Get.back(),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}

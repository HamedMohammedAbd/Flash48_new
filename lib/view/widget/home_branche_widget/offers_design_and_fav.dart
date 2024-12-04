import 'package:test_test/core/constant/app_route.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/constant/app_image.dart';
import '../../../core/function/height.dart';
import '../../../core/function/width.dart';
import '../public_widget/text_custom.dart';

class OffersDesignAndFav extends StatelessWidget {
  final bool isNew;
  final bool isDelete;
  final void Function()? onTap;
  const OffersDesignAndFav({
    super.key,
    this.isNew = false,
    this.isDelete = false,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () {
            Get.toNamed(AppRoute.productDetails);
          },
          child: Container(
            margin: EdgeInsets.symmetric(
              vertical: height(60.1),
              horizontal: 10,
            ),
            width: width(1),
            height: height(8.3),
            decoration: const BoxDecoration(
              color: AppColor.backgroundSecondColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
            ),
            child: Row(
              children: [
                const Spacer(),
                Padding(
                  padding: EdgeInsets.all(width(50)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          ...List.generate(
                            5,
                            (index) {
                              return Container(
                                margin: EdgeInsets.only(
                                  right: width(100),
                                ),
                                child: Icon(
                                  Icons.star,
                                  color: AppColor.primaryColor,
                                  size: AppFontSize.size12,
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      Image.asset(
                        AppImage.clockImage,
                        width: width(AppFontSize.size17),
                        height: width(AppFontSize.size17),
                      ),
                      TextCustom(
                        text: "35m",
                        fontSize: AppFontSize.size12,
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30),
                      ),
                      child: Image.asset(
                        AppImage.offer,
                        height: height(8.3),
                        width: width(2.83),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      right: 4,
                      bottom: 4,
                      child: CircleAvatar(
                        radius: AppFontSize.size12 / 2,
                        backgroundColor: AppColor.logOutColor,
                        child: Icon(
                          Icons.favorite,
                          color: AppColor.primaryColor,
                          size: AppFontSize.size9,
                        ),
                      ),
                    ),
                    isNew
                        ? Positioned(
                            left: 0,
                            top: height(42.05),
                            child: Container(
                              width: width(13.93),
                              height: height(84.1),
                              decoration: const BoxDecoration(
                                color: AppColor.newColor,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5),
                                  bottomRight: Radius.circular(5),
                                ),
                              ),
                              child: const FittedBox(
                                child: TextCustom(text: "جديد"),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
          ),
        ),
        isDelete
            ? Positioned(
                left: 0,
                child: InkWell(
                  onTap: onTap,
                  child: Container(
                    alignment: Alignment.center,
                    width: AppFontSize.size20,
                    height: AppFontSize.size20,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColor.logOutColor,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          blurRadius: 2,
                          color: AppColor.blackColor45,
                          spreadRadius: 0,
                          offset: Offset(0.0, 0.0),
                        ),
                      ],
                    ),
                    child: Icon(
                      Icons.cancel,
                      size: AppFontSize.size12,
                    ),
                  ),
                ),
              )
            : Container(),
      ],
    );
  }
}

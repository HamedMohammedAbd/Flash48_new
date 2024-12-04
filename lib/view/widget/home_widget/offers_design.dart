import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/constant/app_image.dart';
import '../../../core/function/height.dart';
import '../../../core/function/width.dart';
import '../public_widget/back_icon.dart';
import '../public_widget/text_custom.dart';

class OffersDesign extends StatelessWidget {
  final String name;
  final void Function() onTap;
  final void Function()? onTapProducr;
  const OffersDesign({
    super.key,
    required this.name,
    required this.onTap,
    this.onTapProducr,
  });
  @override
  Widget build(Object context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: height(36.6),
        ),
        SizedBox(
          height: height(5.224),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextCustom(
                    text: name,
                    fontSize: AppFontSize.size13,
                    fontWeight: FontWeight.w700,
                  ),
                  BackIcon(
                    onTap: onTap,
                    image: AppImage.leftArraw,
                    color: AppColor.grayColor2,
                  ),
                ],
              ),
              SizedBox(
                height: height(100),
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...List.generate(
                      10,
                      (index) {
                        return InkWell(
                          onTap: onTapProducr,
                          child: Container(
                            margin: EdgeInsets.only(
                              left: width(22.94),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(
                                  index % 2 == 0 ? 30 : 0,
                                ),
                                bottomLeft: Radius.circular(
                                  index % 2 == 0 ? 30 : 0,
                                ),
                                topLeft: Radius.circular(
                                  index % 2 == 0 ? 0 : 30,
                                ),
                                bottomRight: Radius.circular(
                                  index % 2 == 0 ? 0 : 30,
                                ),
                              ),
                              color: AppColor.backgroundSecondColor,
                            ),
                            width: width(4.239),
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    ClipRRect(
                                      child: Image.asset(
                                        index % 2 == 0
                                            ? AppImage.girl1
                                            : AppImage.girl2,
                                        width: width(4.239),
                                        height: width(4.239),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: width(39),
                                      right: width(39),
                                      child: CircleAvatar(
                                        radius: width(65),
                                        backgroundColor: AppColor.grayColor,
                                        child: Icon(
                                          Icons.favorite,
                                          size: width(55.72),
                                        ),
                                      ),
                                    ),
                                    index == 2
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
                                                  bottomRight:
                                                      Radius.circular(5),
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
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Row(
                                      children: [
                                        TextCustom(
                                          text: "45m",
                                          fontSize: AppFontSize.size9,
                                        ),
                                        Image.asset(
                                          AppImage.clockImage,
                                          width: width(35.455),
                                          height: width(35.455),
                                        ),
                                        const Spacer(),
                                        ...List.generate(
                                          5,
                                          (index) {
                                            return Icon(
                                              Icons.star,
                                              size: width(65),
                                            );
                                          },
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

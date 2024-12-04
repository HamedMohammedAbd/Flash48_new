import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/constant/app_image.dart';
import '../../../core/function/height.dart';
import '../../../core/function/width.dart';
import '../public_widget/button_custom.dart';
import '../public_widget/text_custom.dart';

class CardDesign extends StatelessWidget {
  final String title;
  final List<dynamic> subtitle;
  final void Function() onPressed;
  final int price, time;

  const CardDesign({
    super.key,
    required this.title,
    required this.subtitle,
    required this.onPressed,
    required this.price,
    required this.time,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: height(50),
      ),
      height: height(5.8),
      width: width(1),
      decoration: BoxDecoration(
        color: AppColor.whiteColor,
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
          Container(
            height: AppFontSize.sizeHieght40,
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width(40),
                ),
                CircleAvatar(
                  backgroundColor: AppColor.fillColor,
                  radius: width(55.7),
                ),
                SizedBox(
                  width: width(40),
                ),
                TextCustom(
                  text: title,
                  color: AppColor.whiteColor,
                  fontSize: AppFontSize.size13,
                ),
                const Spacer(),
                Container(
                  height: AppFontSize.sizeHieght40 - 11,
                  width: width(3.9),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: AppColor.cardColor,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      TextCustom(
                        text: price.toString(),
                        color: AppColor.whiteColor,
                        fontSize: AppFontSize.size12,
                        fontWeight: FontWeight.w700,
                      ),
                      const Spacer(),
                      TextCustom(
                        text: "ريال/",
                        fontSize: AppFontSize.size12,
                        fontWeight: FontWeight.w700,
                      ),
                      const Spacer(),
                      TextCustom(
                        text: time.toString(),
                        color: AppColor.whiteColor,
                        fontSize: AppFontSize.size12,
                        fontWeight: FontWeight.w700,
                      ),
                      const Spacer(),
                      TextCustom(
                        text: "شهور",
                        fontSize: AppFontSize.size12,
                        fontWeight: FontWeight.w700,
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
                SizedBox(
                  width: width(80),
                ),
              ],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      ...List.generate(
                        subtitle.length > 3 ? 3 : subtitle.length,
                        (index) {
                          return Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(
                                  top: height(150),
                                ),
                                child: CircleAvatar(
                                  backgroundColor: AppColor.whiteColor,
                                  radius: width(78),
                                  child: Image.asset(
                                    AppImage.confirm,
                                    fit: BoxFit.fill,
                                    color: AppColor.primaryColor,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: width(40),
                              ),
                              TextCustom(
                                text: subtitle[0].toString(),
                                fontSize: AppFontSize.size12,
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: ButtonCustom(
                    text: "تفاصيل الباقة",
                    onPressed: onPressed,
                    height: height(36.2),
                    width: width(3.9394),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

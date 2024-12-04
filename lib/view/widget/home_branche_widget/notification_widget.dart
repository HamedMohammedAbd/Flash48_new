import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/constant/app_image.dart';
import '../../../core/function/height.dart';
import '../../../core/function/width.dart';
import '../public_widget/text_custom.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(13.35),
      width: width(1),
      decoration: BoxDecoration(
        color: AppColor.backColor,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const <BoxShadow>[
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0,
            color: Color(0x121D291F),
            blurStyle: BlurStyle.normal,
          )
        ],
      ),
      margin: EdgeInsets.symmetric(
        vertical: height(168.2),
      ),
      padding: EdgeInsets.all(
        width(48.75),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              AppImage.noti,
              height: height(19.114),
              width: width(8.3),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                top: height(84.1),
                left: width(39),
                right: width(78),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextCustom(
                    text: "شهد شاهين ترغب بالاستفادة من العرض",
                    fontSize: AppFontSize.size12,
                  ),
                  Row(
                    children: [
                      TextCustom(
                        text: "35467897",
                        fontSize: AppFontSize.size9,
                      ),
                      Icon(
                        Icons.call,
                        size: width(28),
                      ),
                      const Spacer(),
                      TextCustom(
                        text: "8:30PM",
                        fontSize: AppFontSize.size9 - width(195),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

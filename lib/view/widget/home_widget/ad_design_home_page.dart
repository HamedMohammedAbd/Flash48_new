import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_font_size.dart';
import '../../../core/constant/app_image.dart';
import '../../../core/function/height.dart';
import '../../../core/function/width.dart';

class AdDesignHomePage extends StatelessWidget {
  const AdDesignHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: height(7),
      width: width(1),
      margin: EdgeInsets.only(
        left: width(18.6),
      ),
      padding: EdgeInsets.all(width(55.72)),
      decoration: const BoxDecoration(
        color: AppColor.adColor,
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(50),
          topLeft: Radius.circular(50),
        ),
        boxShadow: <BoxShadow>[
          BoxShadow(
            blurRadius: 4,
            color: AppColor.blackColor45,
            blurStyle: BlurStyle.normal,
            spreadRadius: 0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(width(55.72)),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              flex: 4,
                              child: Text(
                                "عروض تصل الى على منتجاتنا",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: AppFontSize.size12,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                "50%",
                                style: TextStyle(
                                  color: const Color(0xff1F8282),
                                  fontSize: AppFontSize.size20,
                                  shadows: const [
                                    Shadow(
                                      blurRadius: 5,
                                      color: AppColor.blackColor45,
                                      offset: Offset(0, 2),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const Spacer(),
                        Container(
                          height: height(32.35),
                          width: width(5.57),
                          padding: const EdgeInsets.all(2),
                          decoration: BoxDecoration(
                            color: AppColor.grayColor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: const <BoxShadow>[
                              BoxShadow(
                                blurRadius: 4,
                                color: Colors.black,
                                blurStyle: BlurStyle.normal,
                                spreadRadius: 0,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const FittedBox(
                            child: Text(
                              "عرض",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: height(3.25),
                    width: 1,
                    decoration: const BoxDecoration(
                      color: AppColor.grayColor,
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                          blurRadius: 4,
                          color: AppColor.blackColor45,
                          blurStyle: BlurStyle.normal,
                          spreadRadius: 0.25,
                          offset: Offset(1, 4),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                50,
              ),
              bottomRight: Radius.circular(
                50,
              ),
            ),
            child: Image.asset(
              AppImage.testImage,
              width: width(2.4375),
              height: height(7.86),
            ),
          ),
        ],
      ),
    );
  }
}

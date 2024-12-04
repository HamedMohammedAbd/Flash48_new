import 'package:test_test/core/function/height.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/function/width.dart';

class SearchTopDesign extends StatelessWidget {
  final String text, image;
  final void Function()? onTap;
  const SearchTopDesign({
    super.key,
    required this.text,
    required this.image,
    this.onTap,
  });

  @override
  Widget build(Object context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: height(100),
        ),
        width: width(9),
        decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [
                Color(0xffF4FDFD),
                Color(0x121D2991),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [1, 0.57],
            ),
            borderRadius: BorderRadius.circular(5)),
        margin: EdgeInsets.only(
          left: width(39),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              image,
              color: AppColor.primaryColor,
              width: width(17.73),
            ),
            Expanded(
              child: FittedBox(
                  child: Row(
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                      color: AppColor.primaryColor,
                      fontSize: 7,
                    ),
                  ),
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}

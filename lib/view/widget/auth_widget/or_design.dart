import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:flutter/material.dart';

class OrDesign extends StatelessWidget {
  const OrDesign({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: height(32.35),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 12,
            child: Container(
              height: 1.5,
              width: width(1),
              color: AppColor.primaryColor,
            ),
          ),
          Center(
            child: Container(
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColor.primaryColor,
              ),
              height: width(10),
              width: width(10),
              child: Center(
                child: Text(
                  'أو',
                  style: TextStyle(
                    color: AppColor.whiteColor,
                    fontWeight: FontWeight.w700,
                    fontSize: AppFontSize.size12,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/function/width.dart';
import 'package:flutter/material.dart';

import '../../../core/function/height.dart';
import 'back_icon.dart';
import 'text_custom.dart';

class StaticAppbar extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final bool isBack;
  final bool isSearch;
  const StaticAppbar({
    super.key,
    required this.text,
    this.onTap,
    this.isBack = true,
    this.isSearch = false,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(
        AppFontSize.sizeAppBar,
      ),
      child: Container(
        height: AppFontSize.sizeAppBar,
        width: width(1),
        decoration: const BoxDecoration(
          // borderRadius: BorderRadius.only(
          //   bottomLeft: Radius.circular(20),
          //   bottomRight: Radius.circular(20),
          // ),
          gradient: LinearGradient(
            begin: Alignment(0, -1),
            end: Alignment(-0.003, 1),
            colors: <Color>[
              Color(0xff086A7B),
              Color(0xffF1F5FA),
              Color(0x80979B00),
            ],
            stops: <double>[0, 1, 1],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              isSearch ? const Spacer() : Container(),
              isBack ? BackIcon(onTap: onTap) : Container(),
              TextCustom(
                text: text,
                fontSize: 23,
                textAlign: TextAlign.center,
              ),
              isSearch ? const Spacer() : Container(),
              isSearch
                  ? Container(
                      width: width(1.76),
                      height: height(31),
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AppImage.textfieldImage,
                          ),
                        ),
                      ),
                      child: SizedBox(
                        width: width(1.76),
                        height: height(31),
                        child: Center(
                          child: TextFormField(
                            cursorColor: AppColor.primaryColor,
                            cursorHeight: height(55),
                            decoration: InputDecoration(
                              hintText: "بحث",
                              prefixIcon: Icon(
                                Icons.search,
                                color: AppColor.primaryColor,
                                size: AppFontSize.size12,
                              ),
                              hintStyle: TextStyle(
                                color: AppColor.whiteColor,
                                fontSize: AppFontSize.size12,
                                fontWeight: FontWeight.w400,
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: width(80),
                                vertical: height(70),
                              ),
                              border: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                    )
                  : const SizedBox(),
              isSearch ? const Spacer() : Container(),

            ],
          ),
        ),
      ),
    );
  }
}

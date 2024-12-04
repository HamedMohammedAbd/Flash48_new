import 'package:test_test/core/constant/app_color.dart';
import 'package:flutter/material.dart';

class TextCustom extends StatelessWidget {
  final String text;
  final FontWeight? fontWeight;
  final double? fontSize;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextAlign? textAlign;
  const TextCustom({
    super.key,
    required this.text,
    this.fontWeight,
    this.fontSize,
    this.color,
    this.textDecoration,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
        fontWeight: fontWeight ?? FontWeight.w700,
        fontSize: fontSize,
        color: color ?? AppColor.primaryColor,
        decoration: textDecoration,
      ),
    );
  }
}

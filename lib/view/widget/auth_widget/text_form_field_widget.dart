import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/width.dart';
import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';

class TextFormFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final IconData? icon;
  final IconData? iconSuffix;
  final bool isImage;
  final String? image;
  final void Function(String)? onChanged;
  final bool noLeading;
  final TextInputType? keyboardType;

  final bool? obscureText;
  final void Function()? showPassword;
  final String? Function(String?)? validator;
  const TextFormFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    this.icon,
    this.iconSuffix,
    this.obscureText,
    this.showPassword,
    this.isImage = false,
    this.image,
    this.onChanged,
    this.noLeading = false,
    this.validator,
    this.keyboardType,
  });
  @override
  Widget build(Object context) {
    return SizedBox(
      width: width(1.36),
      child: TextFormField(
        controller: controller,
        validator: validator,
        onChanged: onChanged,
        keyboardType: keyboardType,
        cursorColor: AppColor.primaryColor,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          disabledBorder: border(AppColor.primaryColor),
          focusedBorder: border(AppColor.secondColor),
          enabledBorder: border(AppColor.primaryColor),
          errorBorder: border(AppColor.redColor),
          hintText: hintText,
          hintStyle: TextStyle(
            color: AppColor.secondColor,
            fontSize: AppFontSize.size12,
          ),
          prefixIcon: noLeading
              ? null
              : !isImage
                  ? Icon(icon)
                  : Container(
                      margin: EdgeInsets.all(width(40)),
                      child: Image.asset(
                        image!,
                        width: width(18.14),
                        height: width(18.14),
                      ),
                    ),
          suffixIcon: iconSuffix == null
              ? null
              : InkWell(
                  onTap: showPassword,
                  child: Icon(
                    obscureText != null && obscureText!
                        ? Icons.visibility_off_outlined
                        : iconSuffix,
                  ),
                ),
        ),
      ),
    );
  }
}

UnderlineInputBorder border(Color color) {
  return UnderlineInputBorder(
    borderSide: BorderSide(
      color: color,
      width: 2.0,
    ),
  );
}

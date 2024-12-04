import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../widget/public_widget/text_custom.dart';

class DoYouHaveAccount extends StatelessWidget {
  final void Function()? onTap;
  final String textOne, textTwo;
  const DoYouHaveAccount({
    super.key,
    this.onTap,
    required this.textOne,
    required this.textTwo,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextCustom(
            text: textOne,
            fontWeight: FontWeight.normal,
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              textTwo,
              style: const TextStyle(
                color: AppColor.thirdColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

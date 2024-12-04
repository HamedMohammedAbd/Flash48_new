import 'package:flutter/material.dart';

import '../../../core/constant/app_color.dart';
import '../../../core/constant/app_image.dart';
import '../../../core/function/width.dart';
import '../public_widget/text_custom.dart';

class GmailChoose extends StatelessWidget {
  const GmailChoose({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width(3.1452),
      child: ElevatedButton(
        style: ButtonStyle(
          side: WidgetStateProperty.all(
            const BorderSide(
              color: AppColor.primaryColor,
            ),
          ),
          shadowColor: const WidgetStatePropertyAll<Color>(
            AppColor.primaryColor,
          ),
          elevation: const WidgetStatePropertyAll<double?>(4.0),
          backgroundColor: WidgetStateProperty.all<Color>(
            AppColor.whiteColor,
          ),
        ),
        onPressed: () {},
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: width(50),
              ),
              child: Image.asset(
                AppImage.gmailImage,
                width: width(20.53),
                height: width(20.53),
              ),
            ),
            const TextCustom(
              text: 'Gmail',
            ),
          ],
        ),
      ),
    );
  }
}

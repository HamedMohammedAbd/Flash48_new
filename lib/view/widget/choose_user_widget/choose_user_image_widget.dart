import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/constant/app_image.dart';

class ChooseUserImageWidget extends StatelessWidget {
  const ChooseUserImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Image.asset(
          fit: BoxFit.cover,
          AppImage.homeImage,
          width: Get.width / 1.39,
          height: Get.height / 1.768,
        ),
      ],
    );
  }
}

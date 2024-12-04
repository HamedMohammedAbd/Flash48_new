import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:test_test/view/widget/public_widget/static_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/home_branche_controller/rating_page_controller.dart';
import '../../../core/function/height.dart';
import '../../widget/home_branche_widget/rating_design_widget.dart';

class RatingPage extends GetView<RatingPageControllerImp> {
  const RatingPage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(RatingPageControllerImp());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Container(
        decoration: BoxDecoration(
          backgroundBlendMode: BlendMode.darken,
          color: AppColor.grayColor.withOpacity(0),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: width(19.5),
          vertical: height(90),
        ),
        child: ButtonCustom(
          height: AppFontSize.sizeHieght40,
          text: "تقييم",
          width: AppFontSize.sizeWidth181,
          onPressed: () => controller.addRatingProduct(),
          isImage: true,
          imageName: AppImage.star,
        ),
      ),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: const StaticAppbar(text: "التقييمات"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(
          width(19.5),
        ),
        child: const Column(
          children: [
            RatingDesignWidget(),
            RatingDesignWidget(),
            RatingDesignWidget(),
            RatingDesignWidget(),
            RatingDesignWidget(),
            RatingDesignWidget(),
            RatingDesignWidget(),
          ],
        ),
      ),
    );
  }
}

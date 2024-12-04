import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/view/widget/auth_widget/text_form_field_widget.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class RatingPageController extends GetxController {
  addRatingProduct();
  rateProduct(int index);
}

class RatingPageControllerImp extends RatingPageController {
  List<int> rating = [];
  @override
  addRatingProduct() {
    Get.defaultDialog(
      title: "تقييم العرض",
      titleStyle: const TextStyle(
        color: AppColor.primaryColor,
        fontWeight: FontWeight.bold,
      ),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ...List.generate(
                5,
                (index) => IconButton(
                  onPressed: () {
                    rateProduct(index);
                  },
                  icon: GetBuilder<RatingPageControllerImp>(
                    builder: (controller) {
                      return Icon(
                        rating.contains(index)
                            ? Icons.star
                            : Icons.star_border_outlined,
                        color: AppColor.primaryColor,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: AppFontSize.sizeHieght40 / 2,
          ),
          TextFormFieldWidget(
            controller: TextEditingController(),
            hintText: "ملاحظات",
            icon: Icons.message_outlined,
          ),
          SizedBox(
            height: AppFontSize.sizeHieght40,
          ),
          ButtonCustom(
            text: "تقييم",
            onPressed: () {
              Get.back();
            },
            height: AppFontSize.sizeHieght40,
            width: AppFontSize.sizeWidth181 * 0.8,
          ),
        ],
      ),
    );
  }

  @override
  rateProduct(int index) {
    if (rating.contains(index)) {
      rating.removeLast();
    } else {
      rating.add(rating.length);
    }

    update();
  }
}

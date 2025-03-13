import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';

import '../../../controller/product/add_new_product_controller.dart';
import '../../../core/constant/app_font_size.dart';
import '../../widget/auth_widget/text_form_field_widget.dart';
import '../../widget/public_widget/static_appbar.dart';

class AddNewProduct extends GetView<AddNewProductControllerImps> {
  const AddNewProduct({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddNewProductControllerImps());
    return Material(
      child: Container(
        color: AppColor.scaffoldColor,
        child: SingleChildScrollView(
          child: Column(
            spacing: height(40),
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const StaticAppbar(
                text: "إضافة عرض جديد",
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: width(15),
                ),
                child: Column(
                  spacing: height(40),
                  children: [
                    Column(
                      spacing: width(40),
                      children: [
                        GetBuilder<AddNewProductControllerImps>(
                            init: AddNewProductControllerImps(),
                            builder: (controller) {
                              return controller.offersImages.isEmpty
                                  ? InkWell(
                                      borderRadius: BorderRadius.circular(20),
                                      onTap: () =>
                                          controller.chooseOffersImages(),
                                      child: Container(
                                        width: width(1),
                                        height: width(1),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border: Border.all(
                                            width: 1,
                                            color: AppColor.primaryColor,
                                          ),
                                        ),
                                        child: Icon(
                                          Icons.add_a_photo_outlined,
                                          size: width(12),
                                        ),
                                      ),
                                    )
                                  : SizedBox(
                                      width: width(1),
                                      height: width(1),
                                      child: PageView.builder(
                                          controller: controller.pageController,
                                          itemCount:
                                              controller.offersImages.length,
                                          onPageChanged: (index) => controller
                                              .changeCurrentPage(index),
                                          itemBuilder: (context, index) {
                                            return ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              child: Image.file(
                                                fit: BoxFit.cover,
                                                File(controller
                                                    .offersImages[index].path),
                                              ),
                                            );
                                          }),
                                    );
                            }),
                        GetBuilder<AddNewProductControllerImps>(
                          builder: (controller) {
                            return Row(
                              spacing: width(80),
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ...List.generate(
                                  controller.offersImages.length,
                                  (index) {
                                    return Container(
                                      width: width(40),
                                      height: width(40),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: controller.currentPage == index
                                            ? AppColor.primaryColor
                                            : AppColor.secondColor,
                                      ),
                                    );
                                  },
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      width: width(1),
                      child: TextFormFieldWidget(
                        controller: controller.titleController,
                        hintText: "اسم المنتج",
                        noLeading: true,
                      ),
                    ),
                    SizedBox(
                      width: width(1),
                      child: TextFormFieldWidget(
                        controller: controller.detailsController,
                        hintText: "تفاصيل المنتج",
                        noLeading: true,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ButtonCustom(
                          text: "",
                          onPressed: () =>
                              controller.chooseTimeAndDate(context),
                          isImage: true,
                          imageName: AppImage.clockImage,
                          width: width(4),
                          height: width(4),
                          imageHeight: width(4),
                          imageWidth: width(4),
                        ),
                      ],
                    ),
                    ButtonCustom(
                      text: "اضافة العرض",
                      onPressed: () => controller.addOffer(),
                      width: AppFontSize.sizeWidth181,
                      height: AppFontSize.sizeHieght40,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

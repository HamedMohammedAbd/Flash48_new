import 'package:test_test/controller/home_branche_controller/product_details_controller.dart';
import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/constant/app_image.dart';
import 'package:test_test/core/function/height.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/public_widget/back_icon.dart';
import 'package:test_test/view/widget/public_widget/button_custom.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/public_widget/text_custom.dart';

class ProductDetails extends GetView<ProductDetailsControllerImp> {
  const ProductDetails({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(ProductDetailsControllerImp());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        offset: Offset(4.0, 4.0),
                        blurRadius: 6,
                        spreadRadius: 0,
                        color: Color.fromARGB(75, 29, 41, 41),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    child: Image.asset(
                      AppImage.det,
                      width: width(1),
                      height: height(1.97),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: height(46.722),
                  right: width(13.4483),
                  child: Container(
                    width: width(16.25),
                    height: width(16.25),
                    decoration: const BoxDecoration(
                      color: AppColor.logOutColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite,
                      size: AppFontSize.size15,
                    ),
                  ),
                ),
                Positioned(
                  top: height(16.82),
                  left: 0,
                  child: BackIcon(
                    onTap: () => Get.back(),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: width(11.82),
                vertical: height(100),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const TextCustom(text: "35m"),
                      Image.asset(
                        AppImage.clockImage,
                        width: width(13.93),
                        height: width(13.93),
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: AppColor.primaryColor,
                        radius: width(55.7),
                      ),
                      SizedBox(
                        width: width(50),
                      ),
                      CircleAvatar(
                        backgroundColor: AppColor.primaryColor,
                        radius: width(55.7),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: width(50),
                  ),
                  TextCustom(
                    text: "تفاصيل عنها :",
                    fontSize: AppFontSize.size13,
                  ),
                  SizedBox(
                    height: width(50),
                  ),
                  TextCustom(
                    text:
                        "بلوزة صوف شتوية متوفرة بعدة الوان و عدة احجام مع تنورة تأتي كطقم واحد",
                    fontSize: AppFontSize.size12,
                    fontWeight: FontWeight.w400,
                  ),
                  SizedBox(
                    height: width(50),
                  ),
                  GetBuilder<ProductDetailsControllerImp>(
                      init: ProductDetailsControllerImp(),
                      builder: (controller) {
                        return InkWell(
                          onTap: () => controller.goToRatingPage(),
                          child: Row(
                            children: [
                              const Icon(Icons.star),
                              const TextCustom(text: "4.6"),
                              const Spacer(),
                              Stack(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: width(50),
                                    ),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: width(39),
                                          backgroundImage: const AssetImage(
                                            AppImage.hamedImage,
                                          ),
                                        ),
                                        SizedBox(
                                          width: width(195),
                                        ),
                                        CircleAvatar(
                                          radius: width(39),
                                          backgroundImage: const AssetImage(
                                            AppImage.hamedImage,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    right: 0,
                                    top: 0,
                                    child: CircleAvatar(
                                      radius: width(39),
                                      child: Image.asset(
                                        AppImage.hamedImage,
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: width(100),
                              ),
                              TextCustom(
                                text: "(50 مراجعة)",
                                fontSize: AppFontSize.size12,
                                color: AppColor.forgetPassword,
                              ),
                            ],
                          ),
                        );
                      }),
                  SizedBox(
                    height: height(40),
                  ),
                  Center(
                    child: ButtonCustom(
                      text: "الأستفادة من العرض",
                      onPressed: () {},
                      height: height(19.114),
                      width: width(1.7),
                    ),
                  ),
                  SizedBox(
                    height: height(80),
                  ),
                  Center(
                    child: ButtonCustom(
                      text: "الرجوع  للعروض",
                      onPressed: () {
                        controller.backForwoardPage();
                      },
                      height: height(19.114),
                      width: width(1.7),
                    ),
                  ),
                  Container(
                    height: height(6.95),
                    margin: EdgeInsets.symmetric(
                      vertical: height(40),
                    ),
                    padding: EdgeInsets.all(
                      width(50),
                    ),
                    decoration: BoxDecoration(
                      color: AppColor.primaryColor,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TextCustom(
                          text: "مشاركة",
                          color: AppColor.whiteColor,
                        ),
                        Expanded(
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.shareData.length,
                            itemBuilder: (context, index) {
                              String image =
                                  controller.shareData[index]["image"]!;
                              String name =
                                  controller.shareData[index]["name"]!;
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    margin: EdgeInsets.symmetric(
                                      horizontal: width(39),
                                      vertical: height(120),
                                    ),
                                    width: width(11.8),
                                    height: width(11.8),
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                        image: AssetImage(
                                          AppImage.backGroundShareImage,
                                        ),
                                      ),
                                    ),
                                    child: Image.asset(
                                      image,
                                      width: width(index != 4 ? 20.5 : 11.8),
                                      height: width(index != 4 ? 20.5 : 11.8),
                                      fit: index == 4
                                          ? BoxFit.fill
                                          : BoxFit.contain,
                                    ),
                                  ),
                                  TextCustom(
                                    text: name,
                                    color: AppColor.whiteColor,
                                    fontSize: AppFontSize.size9,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

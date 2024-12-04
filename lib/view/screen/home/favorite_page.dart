import 'package:test_test/controller/home_controller/favorite_page_controller.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/width.dart';
import 'package:test_test/view/widget/home_branche_widget/offers_design_and_fav.dart';
import 'package:test_test/view/widget/public_widget/static_appbar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritePage extends GetView<FavoritePageControllerImp> {
  const FavoritePage({super.key});
  @override
  Widget build(BuildContext context) {
    Get.put(FavoritePageControllerImp());
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppFontSize.sizeAppBar),
        child: const StaticAppbar(
          text: "المفضلة",
          isBack: false,
        ),
      ),
      body: Obx(() {
        return ListView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: width(6) - 20,
          ),
          itemCount: controller.itemsFavorite.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                OffersDesignAndFav(
                  isDelete: true,
                  onTap: () => controller.deleteItemFromFavorite(index),
                ),
                Text(controller.itemsFavorite[index].toString()),
              ],
            );
          },
        );
      }),
    );
  }
}

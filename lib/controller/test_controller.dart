import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestController extends GetxController {
  ScrollController scrollController = ScrollController();
  bool isCollapsed2 = false;
  @override
  void onInit() {
    super.onInit();
    scrollController.addListener(() {
      // تحقق مما إذا كان شريط التطبيق في حالة الانكماش
      if (scrollController.hasClients) {
        bool isCollapsed = scrollController.offset >= 200 - kToolbarHeight;
        print(scrollController.offset);
        if (isCollapsed != isCollapsed2) {
          isCollapsed2 = isCollapsed;
          print(isCollapsed2);
          update();
        }
      }
    });
  }
}

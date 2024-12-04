import 'package:test_test/core/constant/app_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../services/my_service.dart';

class MyMiddleware extends GetMiddleware {
  @override
  int? get priority => 1;
  MyServices myServices = Get.find();
  @override
  RouteSettings? redirect(String? route) {
    if (myServices.sharedPreferences.getString('step') == "2") {
      return const RouteSettings(
        name: AppRoute.navHomeScreenPage,
      );
    }
    if (myServices.sharedPreferences.getString('step') == "1") {
      return const RouteSettings(
        name: AppRoute.chooseUserType,
      );
    }
    if (myServices.sharedPreferences.getString('step') == null) {
      return const RouteSettings(
        name: AppRoute.chooseUserType,
      );
    }
    return null;
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_test/core/class/status_request.dart';
import 'package:test_test/core/constant/app_route.dart';
import 'package:test_test/data/model/redions_models.dart';
import 'package:test_test/services/my_service.dart';

import '../../core/constant/app_Api.dart';
import '../../core/function/handling_data.dart';
import '../../data/data_source/remote/get_data.dart';

abstract class FamilyPageController extends GetxController {
  chooseCity(int index);
  goToCitiesPages();
  searchCity(String name);
  getAllRegions();
  int returnCitiesLength();
}

class FamilyPageControllerImp extends FamilyPageController {
  TextEditingController textEditingController = TextEditingController();
  int? cityChoosen;
  List<String> cities = [
    'الرياض',
    'الدمام',
    'جدة',
    'الخبر',
    'القصيم',
    'بريدة',
    'عرعر',
    'جيزان',
    'نجران',
    'الباحة',
    'القطيف',
    'سيهات',
    'رأس تنورة',
    'الجبيل',
    'الأحساء',
    'خميس مشيط',
    'تبوك',
    'مكة المكرمة',
    'المدينة المنورة',
    'أبها',
    'عسير',
    'ينبع',
    'الطايف',
    'وادي الدواسر',
  ];
  List<String> city = [];
  MyServices myServices = Get.find();
  late StatusRequest statusRequest;
  GetData getRegions = GetData(Get.find());
  @override
  void onInit() async {
    city.addAll(cities);
    await getAllRegions();

    super.onInit();
  }

  @override
  chooseCity(index) {
    cityChoosen = index;
    update();
  }

  @override
  goToCitiesPages() {
    Get.toNamed(AppRoute.citiesPages);
  }

  @override
  searchCity(name) {
    cities = city.where((item) => item.contains(name)).toList();
    update();
  }

  @override
  getAllRegions() async {
    statusRequest = StatusRequest.loading;
    var response = await getRegions.getData(
      map: {},
      api: AppApi.getActivitiesData,
      reqType: false,
    );
    statusRequest = handlingData(response);
    if (statusRequest == StatusRequest.success) {
      if (response["data"]["icon"] == "success") {
        List data = response["data"]["data"];
        cities.addAll(
          data.map(
            (e) => RegionsModels.fromJson(e).name!,
          ),
        );
      } else {}
    }

    if (statusRequest == StatusRequest.success) {
    } else {}

    update();
  }

  @override
  int returnCitiesLength() {
    return cities.length > 10 ? 10 : cities.length;
  }
}

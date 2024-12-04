import 'package:test_test/services/my_service.dart';
import 'package:get/get.dart';

String getUserType() {
  MyServices myServices = Get.find();
  return myServices.sharedPreferences.getString("userType") ?? "";
  // return "";
}

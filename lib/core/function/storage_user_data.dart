import 'package:test_test/data/model/admin_user_model.dart';
import 'package:test_test/data/model/user_model.dart';
import 'package:test_test/services/my_service.dart';
import 'package:get/get.dart';

storageUserData(
    NormalUserModel? normalUserModel, AdminUserModels? adminUserModel) {
  MyServices myServices = Get.find();
  if (normalUserModel != null) {
    myServices.sharedPreferences
        .setString("userData", normalUserModel.toJson().toString());
  } else {
    myServices.sharedPreferences
        .setString("userData", adminUserModel!.toJson().toString());
  }
}

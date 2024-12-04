import 'package:test_test/data/model/admin_user_model.dart';
import 'package:test_test/data/model/user_model.dart';
import 'package:test_test/services/my_service.dart';
import 'package:get/get.dart';

storageUserData(
    NormalUserModel? normalUserModel, AdminUserModel? adminUserModel) {
  MyServices myServices = Get.find();
  if (normalUserModel != null) {
    myServices.sharedPreferences
        .setString("userId", normalUserModel.userId!.toString());
    myServices.sharedPreferences
        .setString("username", normalUserModel.userName!.toString());
    myServices.sharedPreferences
        .setString("userEmail", normalUserModel.userEmail!.toString());
    myServices.sharedPreferences
        .setString("userPassword", normalUserModel.userPassword!.toString());
    myServices.sharedPreferences
        .setString("userType", normalUserModel.userType!.toString());
  } else {
    myServices.sharedPreferences
        .setString("userId", adminUserModel!.userId!.toString());
    myServices.sharedPreferences
        .setString("username", adminUserModel.userName!.toString());
    myServices.sharedPreferences
        .setString("userEmail", adminUserModel.userEmail!.toString());
    myServices.sharedPreferences
        .setString("userPassword", adminUserModel.userPassword!.toString());
    myServices.sharedPreferences
        .setString("userType", adminUserModel.userType!.toString());
    myServices.sharedPreferences
        .setString("userPhone", adminUserModel.userPhone!.toString());
  }
}

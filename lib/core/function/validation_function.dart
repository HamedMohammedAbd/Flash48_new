import 'package:get/get.dart';

validationFunction({
  required String value,
  required int min,
  required int max,
  required String type,
  String? password,
  String? confirmPassword,
}) {
  if (value.trim().isEmpty) {
    return "can'tBeEmpty".tr;
  }
  if (type == "username") {
    if (!GetUtils.isUsername(value)) {
      return "يجب الا يحتوي على فراغات قم بتعديل اسم المستخدم";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(value)) {
      return "الجيميل غير متاح";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(value)) {
      return "رقم الجوال غير متاح";
    }
  }

  if (value.length < min) {
    return "يجب ان يكون أكثر من  $min";
  }

  if (value.length > max) {
    return "يجب ان يكون أقل من  $min";
  }
  if (password != confirmPassword) {
    return "the password not confirm";
  }
}

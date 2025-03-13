// ignore_for_file: avoid_print

import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:persian_datetime_picker/persian_datetime_picker.dart';
import 'package:test_test/core/constant/app_color.dart';

import '../../core/constant/app_Api.dart';
import '../../core/function/choose_iamges.dart';

abstract class AddNewProductController extends GetxController {
  initializedController();
  chooseOffersImages();
  changeCurrentPage(int index);
  addOffer();
  chooseTimeAndDate(context);
  // changeBmOrAm(bool bmOrAm);
}

class AddNewProductControllerImps extends AddNewProductController {
  late TextEditingController titleController;
  late TextEditingController detailsController;
  List<XFile> offersImages = [];
  late PageController pageController;
  int currentPage = 0;
  bool? chooseTimeAmOrBm;
  @override
  void onInit() async {
    await initializedController();

    super.onInit();
  }

  @override
  void dispose() {
    titleController.dispose();
    detailsController.dispose();
    super.dispose();
  }

  @override
  initializedController() {
    titleController = TextEditingController();
    detailsController = TextEditingController();
    pageController = PageController();
  }

  @override
  chooseOffersImages() async {
    offersImages = await pickeImages();
    update();
  }

  @override
  changeCurrentPage(int index) {
    currentPage = index;
    update();
  }

  @override
  addOffer() async {
    await uploadContent(images: offersImages, additionalData: {
      "name": "name name 9",
      "details": "itemDescriptionController.text",
      "Date": "2025-01-25",
      "Time": "13:05",
      "seller_id": "7",
      "authenticated": "1",
    });
  }

  uploadContent({
    required List<XFile> images,
    Map<String, dynamic>? additionalData,
  }) async {
    try {
      // تجهيز URL الخاص بال API
      var url = Uri.parse(AppApi.addOffers);

      // إنشاء طلب متعدد الأجزاء
      var request = http.MultipartRequest('POST', url);

      // إضافة headers
      // request.headers.addAll({
      //   "x-api-token": "vHpsSUCU1Sc9Kko0e1OtP2G5SoDuPgjDHROaCTVR3Bw=",
      //   'Accept': 'application/json',
      //   'Content-Type': 'application/x-www-form-urlencoded',
      //   'Authorization':
      //       'Bearer ${myServices.sharedPreferences.getString("token")}',
      // });

      // إضافة البيانات الإضافية إذا وجدت
      if (additionalData != null) {
        additionalData.forEach((key, value) {
          request.fields[key] = value.toString();
        });
      }

      // إضافة الصور
      for (int i = 0; i < images.length; i++) {
        var multipartFile = await http.MultipartFile.fromPath(
          "images[]", // اسم المصفوفة في API
          File(images[i].path).path,
          // يمكنك إضافة نوع MIME للصورة إذا كنت بحاجة إليه
          // contentType: MediaType('image', 'jpeg'),
        );
        request.files.add(multipartFile);
      }

      // إرسال الطلب
      var streamedResponse = await request.send();
      var response = await http.Response.fromStream(streamedResponse);

      // التحقق من نجاح العملية
      if (response.statusCode == 200) {
        // if (jsonDecode(response.body)["code"] != 200) {
        //   // subscribe = true;
        // } else {
        //   // print('Response: ${jsonDecode(response.body)["code"]}');
        //   // print('Response: ${jsonDecode(response.body)["message"]}');
        // }
        // Get.snackbar(
        //   "",
        //   "${jsonDecode(response.body)["message"]}",
        // );
        // productNameController.clear();
        // productTypeController.clear();
        // locationController.clear();
        // itemDescriptionController.clear();
        // addContactNumberController.clear();
        // priceController.clear();
        print(
            'success upload offers Status code: ${response.statusCode}=======');
        Get.snackbar(
          "",
          "تم رفع العرض بنجاح",
          colorText: AppColor.primaryColor,
        );
        Get.back();
        Get.back();
        print(response.statusCode);
      } else {
        print('فشل في رفع المحتوى. Status code: ${response.statusCode}');
        print(response.statusCode);

        print(jsonDecode(response.body)["data"]);
        print(jsonDecode(response.body)["icon"]);
      }
    } catch (e) {
      print('حدث خطأ أثناء رفع المحتوى: $e');
    }
    update();
  }

  @override
  chooseTimeAndDate(context) async {
    Jalali? pickedDate = await showModalBottomSheet<Jalali>(
      enableDrag: true,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 250,
          child: Column(
            children: <Widget>[
              const Divider(
                height: 0,
                thickness: 1,
              ),
              Expanded(
                child: PersianCupertinoDatePicker(
                  initialDateTime: Jalali.now(),
                  mode: PersianCupertinoDatePickerMode.dateAndTime,
                  onDateTimeChanged: (Jalali dateTime) {},
                ),
              ),
            ],
          ),
        );
      },
    );
    if (pickedDate != null) {
      String label = pickedDate.toJalaliDateTime();
      print(label);
    }
  }

  // @override
  // changeBmOrAm(bool bmOrAm) {
  //   chooseTimeAmOrBm = bmOrAm;
  //   update();
  // }
}

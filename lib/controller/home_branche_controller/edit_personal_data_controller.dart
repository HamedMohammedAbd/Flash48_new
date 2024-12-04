import 'package:test_test/services/my_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

import '../../core/constant/app_color.dart';
import '../../view/widget/public_widget/text_custom.dart';

abstract class EditPersonalDataController extends GetxController {
  editImage();
}

class EditPersonalDataControllerImp extends EditPersonalDataController {
  late TextEditingController nameController;
  late TextEditingController emailController;
  MyServices myServices = Get.find();
  XFile? newImage;
  @override
  void onInit() {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    nameController.text =
        myServices.sharedPreferences.getString("username") ?? "";
    emailController = TextEditingController();
    emailController.text =
        myServices.sharedPreferences.getString("userEmail") ?? "";
  }

  @override
  void dispose() {
    super.dispose();
    nameController.dispose();
    emailController.dispose();
  }

  @override
  editImage() async {
    Get.bottomSheet(
      backgroundColor: AppColor.whiteColor,
      Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const TextCustom(text: "مصدر الصورة"),
            ListTile(
              onTap: () async {
                newImage = await pickImage(
                  source: ImageSource.camera,
                );
                update();
                Get.back();
              },
              title: const Text("كاميرا"),
              trailing: const Icon(
                Icons.camera_alt,
              ),
            ),
            ListTile(
              onTap: () async {
                newImage = await pickImage(
                  source: ImageSource.gallery,
                );
                update();
                Get.back();
              },
              title: const Text("معرض الصور"),
              trailing: const Icon(
                Icons.image,
              ),
            ),
          ],
        ),
      ),
    );

  }

  Future<XFile?>? pickImage({required ImageSource source}) async {
    XFile? image;
    image = await ImagePicker().pickImage(
      imageQuality: 100,
      source: source,
    );

    return image;
  }
}

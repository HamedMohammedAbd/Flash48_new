import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controller/auth_controller/signup_page_controller.dart';
import '../public_widget/text_custom.dart';

class ChooseActivity extends StatelessWidget {
  const ChooseActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SignupPageControllerImp>(builder: (controller) {
      return controller.isActive
          ? Container(
              width: Get.width,
              height: Get.height / 4,
              padding: EdgeInsets.symmetric(
                horizontal: Get.width / 40,
              ),
              child: ListView(
                padding: const EdgeInsets.all(0),
                children: [
                  ...List.generate(
                    controller
                        .getSuggestion(controller.activeController.text)
                        .length,
                    (index) {
                      return ListTile(
                        onTap: () {
                          controller.activeController.text =
                              controller.getSuggestion(
                                  controller.activeController.text)[index];
                        },
                        title: TextCustom(
                          text: controller.getSuggestion(
                              controller.activeController.text)[index],
                          fontWeight: FontWeight.bold,
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          : Container();
    });
  }
}

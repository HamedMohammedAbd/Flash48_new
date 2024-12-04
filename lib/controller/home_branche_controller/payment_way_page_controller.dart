import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class PaymentWayPageController extends GetxController {
  changeCardNumber(String value);
  clearCardNumber();
}

class PaymentWayPageControllerImp extends PaymentWayPageController {

  late TextEditingController cardNumberController;
  late TextEditingController cardUserNameController;
  late TextEditingController cardMMController;
  late TextEditingController cardYYController;
  late TextEditingController cardCVVController;




  @override
  void onInit() {
    cardNumberController = TextEditingController();
    cardUserNameController = TextEditingController();
    cardMMController = TextEditingController();
    cardYYController = TextEditingController();
    cardCVVController = TextEditingController();

    super.onInit();
  }

  @override
  void dispose() {
    cardNumberController.dispose();

    cardUserNameController.dispose();
    cardMMController.dispose();
    cardYYController.dispose();
    cardCVVController.dispose();
    super.dispose();
  }

  @override
  changeCardNumber(String value) {
    cardNumberController.text = value;
    String text = cardNumberController.text.replaceAll(" ", "");
    if (text.length % 4 == 0) {
      cardNumberController.text = "${cardNumberController.text}  ";
    }
    update();
  }

  @override
  clearCardNumber() {
    cardNumberController.clear();
    update();
  }
}

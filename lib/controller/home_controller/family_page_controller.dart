import 'package:get/get.dart';

abstract class FamilyPageController extends GetxController {
  chooseCity(int index);
}

class FamilyPageControllerImp extends FamilyPageController {
  int? cityChoosen;
  List<String> cities = [
    "الرياض",
    "الرياض",
    "الرياض",
    "الرياض",
    "الرياض",
    "الرياض",
    "الرياض",
    "الرياض",
  ];

  @override
  chooseCity(index) {
    cityChoosen = index;
    update();
  }
}

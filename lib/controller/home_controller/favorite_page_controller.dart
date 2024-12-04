import 'package:get/get.dart';

abstract class FavoritePageController extends GetxController {
  deleteItemFromFavorite(int index);
}

class FavoritePageControllerImp extends FavoritePageController {
  List itemsFavorite = [1, 2, 3, 4, 5, 6, 7, 8, 9].obs;

  @override
  deleteItemFromFavorite(int index) {
    itemsFavorite.removeAt(index);
  }
}

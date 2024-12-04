// ignore_for_file: avoid_print

import '../../../core/class/curd.dart';

class GetData {
  Curd curd;

  GetData(this.curd);

  getData({required Map<String, String> map, required String api}) async {
    print("========before===");
    var response = await curd.postData(
      api,
      map,
    );
    print(response.toString());
    print("=======after====");
    return response.fold((l) => l, (r) => r);
  }
}

// // ignore_for_file: avoid_print

// ignore_for_file: avoid_print

import '../../../core/class/curd.dart';

class GetData {
  final Curd curd;

  GetData(this.curd);

  Future<dynamic> getData({
    required Map<String, dynamic> map,
    required String api,
    bool reqType = true,
    bool? isput,
    Map<String, String>? header,
  }) async {
    final response = await curd.postData(
      data: map,
      link: api,
      isPost: reqType,
      isPut: isput,
      headers: header,
    );

    print(response);

    return response.fold(
      (failure) => failure,
      (success) => success,
    );
  }
}

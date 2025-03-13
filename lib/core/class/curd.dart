// // ignore_for_file: avoid_print

// import 'dart:convert';

// import 'package:dartz/dartz.dart';
// import 'package:flutter/foundation.dart';
// import 'package:get/get.dart';
// import 'package:http/http.dart' as http;
// import '../../services/my_service.dart';
// import '../function/chech_internet.dart';
// import 'status_request.dart';

// MyServices myServices = Get.find();

// class Curd {
//   Future<Either<StatusRequest, dynamic>> postData({
//     required String link,
//     required Map data,
//     bool reqType = true,
//     bool? isput,
//     Map<String, String>? header,
//   }) async {
//     if (await checkInternet()) {
//       http.Response response;

//       if (isput == null) {
//         if (reqType == false) {
//           try {
//             response = await http.get(
//               Uri.parse(link),
//               // headers: {
//               //   "x-api-token": "vHpsSUCU1Sc9Kko0e1OtP2G5SoDuPgjDHROaCTVR3Bw=",
//               //   'Authorization':
//               //       'Bearer ${myServices.sharedPreferences.getString("token")}',
//               // },
//             );
//           } catch (e) {
//             return const Left(StatusRequest.offlineFailure);
//           }
//         } else {
//           try {
//             // print(myServices.sharedPreferences.getString("token"));
//             print("post here ==============");
//             response = await http.post(
//               Uri.parse(link),
//               // headers: header ??
//               //     {
//               //       "x-api-token":
//               //           "vHpsSUCU1Sc9Kko0e1OtP2G5SoDuPgjDHROaCTVR3Bw=",
//               //       'Accept': 'application/json',
//               //       // 'Content-Type': 'application/json',
//               //       'Authorization':
//               //           'Bearer ${myServices.sharedPreferences.getString("token")}',
//               //     },
//               // headers: {
//               //   "Content-Type": "application/json",
//               //   "Accept": "application/json",
//               // },
//               body: data,
//             );
//           } catch (e) {
//             print(e.toString());
//             print("StatusRequest.offlineFailure");
//             return const Left(StatusRequest.offlineFailure);
//           }
//         }
//       } else {
//         try {
//           response = await http.put(
//             Uri.parse(link),
//             // headers: {
//             //   "x-api-token": "vHpsSUCU1Sc9Kko0e1OtP2G5SoDuPgjDHROaCTVR3Bw=",
//             //   'Authorization':
//             //       'Bearer ${myServices.sharedPreferences.getString("token")}',
//             // },
//             body: data,
//           );
//         } catch (e) {
//           print("StatusRequest.offlineFailure");
//           return const Left(StatusRequest.offlineFailure);
//         }
//       }

//       try {
//         // fetchAndParseData(response.body);
//         dynamic responseBody = await fetchAndParseData(response.body);
//         return Right({
//           "code": response.statusCode,
//           "data": responseBody,
//         });
//         // if (response.statusCode == 200 || response.statusCode == 201) {
//         //   print("post data==========success");

//         //   dynamic responseBody = await jsonDecode(response.body.toString());
//         //   print("post data==========response body");
//         //   return Right(responseBody);
//         // } else {
//         //   if (response.statusCode == 401) {
//         //     dynamic responseBody = await jsonDecode(response.body.toString());
//         //     print(responseBody);
//         //     return Right({
//         //       "code": response.statusCode,
//         //     });
//         //   }
//         //   print("${response.statusCode}=====================");
//         //   if (response.statusCode == 403) {
//         //     dynamic responseBody = await jsonDecode(response.body.toString());
//         //     print(responseBody);
//         //     return Right({
//         //       "code": response.statusCode,
//         //     });
//         //   }
//         //   if (response.statusCode == 302) {
//         //     return Right({
//         //       "code": response.statusCode,
//         //     });
//         //   } else {
//         //     print(response.statusCode);
//         //     return const Left(StatusRequest.serverFailure);
//         //   }
//         // }
//       } catch (e) {
//         print("StatusRequest.serverFailure");
//         return const Left(StatusRequest.serverFailure);
//       }
//     } else {
//       return const Left(StatusRequest.offlineFailure);
//     }
//   }
// }

// Future<Map<String, dynamic>> fetchAndParseData(String body) async {
//   final parsedData = await compute(parseJson, body);
//   return parsedData;
// }

// Map<String, dynamic> parseJson(String responseBody) {
//   return jsonDecode(responseBody);
// }
// ignore_for_file: avoid_print

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:test_test/core/constant/app_Api.dart';
import '../../services/my_service.dart';
import '../function/chech_internet.dart';
import '../function/snakebar_function.dart';
import 'status_request.dart';

MyServices myServices = Get.find();

class Curd {
  Future<Either<StatusRequest, dynamic>> postData({
    required String link,
    required Map<String, dynamic> data,
    bool isPost = true,
    bool? isPut,
    Map<String, String>? headers,
  }) async {
    if (!await checkInternet()) {
      print("offline failure");
      snackbarFunction("خطأ", "لا يوجد اتصال بالانترنت");
      return const Left(StatusRequest.offlineFailure);
    }
    // ✅ التحقق من صحة الرابط قبل الإرسال
    if (!validateUrl(link)) {
      print("❌ [Error] رابط API غير صالح: $link");
      snackbarFunction("خطأ", "الرابط غير صحيح، تأكد من عنوان السيرفر.");
      return const Left(StatusRequest.offlineFailure);
    }
    // ✅ التحقق من أن السيرفر يعمل قبل تنفيذ الطلب
    if (!await pingServer()) {
      print("❌ [Error] السيرفر غير متصل أو غير مستجيب: $link");
      snackbarFunction("خطأ", "السيرفر غير متصل أو غير مستجيب.");
      return const Left(StatusRequest.serverFailure);
    }

    http.Response response;
    try {
      if (isPut == true) {
        // Request نوعه PUT
        response = await http.put(
          Uri.parse(link),
          headers: headers ?? _defaultHeaders(),
          body: jsonEncode(data),
        );
      } else if (isPost) {
        // Request نوعه POST

        print("===============================================post before");

        response = await http.post(
          Uri.parse(link),
          headers: headers ?? _defaultHeaders(),
          body: jsonEncode(data),
        );

        print("===============================================post after");
      } else {
        // Request نوعه GET
        response = await http.get(Uri.parse(link),
            headers: headers ?? _defaultHeaders());
      }
      print("✅ [DEBUG] تم استلام الاستجابة من السيرفر بنجاح.");
    } catch (e) {
      print("❌ [Error] Network Failure: $e");
      snackbarFunction("خطأ", "يوجد مشكلة بالاتصال بالسيرفر");

      return const Left(StatusRequest.offlineFailure);
    }

    try {
      // فك تشفير البيانات في Isolate لتقليل الضغط على الـ UI Thread
      final parsedResponse = await compute(parseJson, response.body);
      return Right({"code": response.statusCode, "data": parsedResponse});
    } catch (e) {
      print("❌ [Error] JSON Parsing Failure: $e");
      snackbarFunction("خطأ", "يوجد مشكلة بالاتصال بالسيرفر");

      return const Left(StatusRequest.serverFailure);
    }
  }

  /// 🔹 إعداد Headers الافتراضية
  Map<String, String> _defaultHeaders() {
    return {
      "Content-Type": "application/json",
      "Accept": "application/json",
      'Authorization':
          'Bearer ${myServices.sharedPreferences.getString("token")}',
    };
  }
}

/// 🔹 فك تشفير JSON باستخدام Isolate لتجنب الضغط على UI Thread
Future<Map<String, dynamic>> fetchAndParseData(String body) async {
  return await compute(parseJson, body);
}

Map<String, dynamic> parseJson(String responseBody) {
  return jsonDecode(responseBody);
}

/// ✅ دالة التحقق من صحة الرابط
bool validateUrl(String url) {
  final uri = Uri.tryParse(url);
  return uri != null &&
      (uri.isAbsolute &&
          (url.startsWith("http://") || url.startsWith("https://")));
}

Future<bool> pingServer() async {
  int retries = 3; // Retry 3 times
  while (retries > 0) {
    try {
      Future.delayed(const Duration(seconds: 10), () async {
        final response =
            await http.post(Uri.parse(AppApi.route)); // Retry with timeout
        if (response.statusCode == 200 || response.statusCode == 201) {
          return true;
        }
      });
    } on TimeoutException catch (_) {
      snackbarFunction("خطأ", "يوجد مشكلة بالاتصال بالسيرفر");

      print(
          "❌ TimeoutException: The server did not respond within the timeout period.");
    } on HttpServer catch (e) {
      snackbarFunction("خطأ", "يوجد مشكلة بالاتصال بالسيرفر");

      print("❌ Error occurred: $e");
    } catch (_) {
      snackbarFunction("خطأ", "يوجد مشكلة بالاتصال بالسيرفر");

      print("❌ Error occurred: ");
    }
    retries--;
    await Future.delayed(
        const Duration(seconds: 2)); // Wait for 2 seconds before retrying
  }
  return false;
}

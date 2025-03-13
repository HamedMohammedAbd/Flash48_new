// import 'dart:io';

import 'dart:io';

Future<bool> checkInternet() async {
  try {
    // محاولة إجراء بحث DNS
    await Future.delayed(const Duration(milliseconds: 5500), () async {
      final result = await InternetAddress.lookup('google.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    });
    return false;
  } on SocketException {
    // في حال حدوث استثناء (لا يوجد اتصال)
    return false;
  } catch (_) {
    return false;
  }
}

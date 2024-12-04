import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_test/route.dart';
import 'binding/my_binding.dart';
import 'core/constant/app_color.dart';
import 'services/my_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flash48',
      debugShowCheckedModeBanner: false,
      initialBinding: MyBinding(),
      locale: const Locale('ar'),
      theme: ThemeData(
        fontFamily: "Cairo",
        colorScheme: ColorScheme.fromSeed(seedColor: AppColor.primaryColor),
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontWeight: FontWeight.w700,
            color: AppColor.primaryColor,
          ),
        ),
      ),
      getPages: routes,
      // home:Test (),
    );
  }
}

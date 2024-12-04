import 'package:test_test/controller/test_controller.dart';
import 'package:test_test/core/constant/app_color.dart';
import 'package:test_test/core/constant/app_font_size.dart';
import 'package:test_test/core/function/width.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widget/public_widget/text_custom.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(TestController());
    return Scaffold(
      backgroundColor: AppColor.whiteColor,
      body: GetBuilder<TestController>(builder: (controller) {
        return CustomScrollView(
          controller: controller.scrollController,
          slivers: [
            SliverAppBar(
              expandedHeight: 200,
              centerTitle: true,
              forceElevated: true,
              floating: true,
              pinned: true,
              backgroundColor: controller.scrollController.hasClients
                  ? AppColor.primaryColor
                  : Colors.transparent,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: TextCustom(
                  text: "تجارب",
                  color: controller.isCollapsed2
                      ? AppColor.whiteColor
                      : AppColor.primaryColor,
                ),
                background: Container(
                  height: AppFontSize.sizeAppBar,
                  width: width(1),
                  decoration: const BoxDecoration(
                    // borderRadius: BorderRadius.only(
                    //   bottomLeft: Radius.circular(20),
                    //   bottomRight: Radius.circular(20),
                    // ),
                    gradient: LinearGradient(
                      begin: Alignment(0, -1),
                      end: Alignment(-0.003, 1),
                      colors: <Color>[
                        Color(0xff086A7B),
                        Color(0xffF1F5FA),
                        Color(0x80979B00),
                      ],
                      stops: <double>[0, 1, 1],
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (BuildContext context, int index) {
                  return ListTile(
                    title: Text("Item #$index"),
                  );
                },
                childCount: 20,
              ),
            ),
          ],
        );
      }),
    );
  }
}

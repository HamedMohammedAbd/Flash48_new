import 'package:flutter/material.dart';

import 'status_request.dart';

class HandlingDataRequest extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataRequest({
    super.key,
    required this.statusRequest,
    required this.widget,
  });

  @override
  Widget build(BuildContext context) {
    return Container();
    // return statusRequest == StatusRequest.loading
    //     ? Center(
    //         child: Lottie.asset(AppImage.loadLottie),
    //       )
    //     : statusRequest == StatusRequest.offlineFailure
    //         ? Center(
    //             child: Lottie.asset(AppImage.offlineLottie),
    //           )
    //         : statusRequest == StatusRequest.serverFailure
    //             ? Center(
    //                 child: Lottie.asset(AppImage.serverLottie),
    //               )
    //             : widget;
  }
}

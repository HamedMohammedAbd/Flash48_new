import 'package:flutter/material.dart';

import 'status_request.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;

  const HandlingDataView({
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
    //         : statusRequest == StatusRequest.failure
    //             ? Center(
    //                 child: Lottie.asset(AppImage.noDataLottie),
    //               )
    //             : statusRequest == StatusRequest.serverFailure
    //                 ? Center(
    //                     child: Lottie.asset(AppImage.serverLottie),
    //                   )
    //                 : widget;
  }
}


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/gen/assets.gen.dart';
import 'package:safe_vpn/manager/router_manager.dart';
import 'package:safe_vpn/utils/statusbar_util.dart';

import 'splash_logic.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    StatusBarUtils.darkStatusBar(false);
    controller.startCountDown(() {
      print("倒计时完成");
      Get.offAndToNamed(RouterManager.login);
    });
    return Obx(
      () => Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Assets.images.iconSplash.path),
          ),
        ),
        child: Container(
          margin: EdgeInsets.only(
            top: StatusBarUtils.getStatusBarHeight() + 10,
            right: 20,
          ),
          child: Align(
            alignment: Alignment.topRight,
            child: Text(
              controller.time.string,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

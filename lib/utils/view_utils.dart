import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/utils/statusbar_util.dart';

import '../gen/assets.gen.dart';

class ViewUtils {
  static AppBar titleBar({
    String? title,
    String? rightIcon,
    VoidCallback? onRight,
  }) {
    return AppBar(
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark),
      toolbarHeight: 60,
      leading: IconButton(
        padding: EdgeInsets.only(left: 20),
        onPressed: () => Get.back(),
        icon: Image.asset(
          Assets.images.iconLoginClose.path,
          width: 40,
          height: 40,
        ),
      ),
      flexibleSpace: Visibility(
        visible: title?.isNotEmpty==true,
        child: Container(
          padding: EdgeInsets.only(top: StatusBarUtils.getStatusBarHeight()),
          alignment: Alignment.center,
          child: Text(
            title ?? "",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 16,
              color: Colors.black,
            ),
          ),
        ),
      ),
      actions: [
        Visibility(
          visible: rightIcon?.isNotEmpty == true && rightIcon?.isBlank == false,
          child: IconButton(
            onPressed: () => {onRight?.call()},
            icon: Image.asset(rightIcon ?? "", width: 42, height: 30),
          ),
        ),
      ],
    );
  }
}

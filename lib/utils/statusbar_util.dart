import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class StatusBarUtils {
  static void translateStatusBar() {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarColor: Colors.transparent,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }

  static void darkStatusBar(bool statusBarDark) {
    if (Platform.isAndroid) {
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
        statusBarIconBrightness:
            statusBarDark ? Brightness.dark : Brightness.light,
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
      SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    }
  }

  static double getStatusBarHeight() {
    MediaQueryData mediaQuery = MediaQuery.of(Get.context!);
    return mediaQuery.padding.top;
  }

  static double getNavigationBarHeight() {
    MediaQueryData mediaQuery = MediaQuery.of(Get.context!);
    return mediaQuery.padding.bottom;
  }
}

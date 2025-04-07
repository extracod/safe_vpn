import 'package:flutter_easyloading/flutter_easyloading.dart';

class ToastUtil {
  static void showToasts(String text) {
    EasyLoading.showToast(text, duration: const Duration(seconds: 2));
  }
}

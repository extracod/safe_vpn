import 'package:get/get.dart';

import 'delete_account_logic.dart';

class DeleteAccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeleteAccountLogic());
  }
}

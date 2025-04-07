import 'package:get/get.dart';

import 'delete_account_success_logic.dart';

class DeleteAccountSuccessBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeleteAccountSuccessLogic());
  }
}

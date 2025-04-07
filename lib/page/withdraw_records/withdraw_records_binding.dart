import 'package:get/get.dart';

import 'withdraw_records_logic.dart';

class WithdrawRecordsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WithdrawRecordsLogic());
  }
}

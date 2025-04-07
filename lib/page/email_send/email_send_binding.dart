import 'package:get/get.dart';

import 'email_send_logic.dart';

class EmailSendBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EmailSendLogic());
  }
}

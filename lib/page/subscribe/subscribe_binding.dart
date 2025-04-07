import 'package:get/get.dart';

import 'subscribe_logic.dart';

class SubscribeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SubscribeLogic());
  }
}

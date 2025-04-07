import 'package:get/get.dart';

import 'bind_superior_logic.dart';

class BindSuperiorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BindSuperiorLogic());
  }
}

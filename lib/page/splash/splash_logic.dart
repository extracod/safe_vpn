import 'dart:ui';

import 'package:get/get.dart';
import 'package:safe_vpn/utils/count_down_timer.dart';

class SplashController extends GetxController {

  late CountdownTimer _countdownTimer;

  var time = 5.obs;

  void startCountDown(VoidCallback callback){
    _countdownTimer = CountdownTimer(duration: 5, onTick: (duration){
      time.value = duration;
    }, onComplete: callback);
    _countdownTimer.start();
  }

  @override
  void onClose() {
    super.onClose();
    _countdownTimer.cancel();
  }

}

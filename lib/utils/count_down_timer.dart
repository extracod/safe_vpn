import 'dart:async';
import 'dart:ui';

class CountdownTimer{
  late Timer _timer;
  int _remainingTime;
  final void Function(int) onTick;
  final VoidCallback onComplete;

  CountdownTimer({
    required int duration,
    required this.onTick,
    required this.onComplete,
  }) : _remainingTime = duration;

  void start() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        _remainingTime--;
        onTick(_remainingTime);
      } else {
        onComplete();
        _timer.cancel();
      }
    });
  }

  void cancel() {
    _timer.cancel();
  }
}
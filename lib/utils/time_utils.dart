import 'package:intl/intl.dart';

class TimeUtils{

  static final pattern1 = "yyyy-MM-dd";
  static final pattern2 = "yyyy-MM-dd HH:mm";
  static final pattern3 = "yyyy-MM-dd HH:mm:ss";

  /// 格式化时间戳 毫秒
  static String formatMillis(int millisecond,[String? pattern]){
    // 将时间戳转换为 DateTime 对象
    DateTime dateTime = DateTime.fromMillisecondsSinceEpoch(millisecond);
    // 定义日期格式
    return DateFormat(pattern??pattern2).format(dateTime);
  }

  /// 格式化时间戳 秒
  static String formatMicros(int microsecond,[String? pattern]){
    // 将时间戳转换为 DateTime 对象
    DateTime dateTime = DateTime.fromMicrosecondsSinceEpoch(microsecond);
    // 定义日期格式
    return DateFormat(pattern??pattern2).format(dateTime);
  }

  /// 获取当前时间戳 毫秒
  static int getNowTime(){
    return DateTime.now().millisecondsSinceEpoch;
  }

}
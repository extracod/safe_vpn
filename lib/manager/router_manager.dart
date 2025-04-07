import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:safe_vpn/page/bind_superior/bind_superior_binding.dart';
import 'package:safe_vpn/page/bind_superior/bind_superior_view.dart';
import 'package:safe_vpn/page/delete_account/delete_account_binding.dart';
import 'package:safe_vpn/page/delete_account/delete_account_view.dart';
import 'package:safe_vpn/page/delete_account_success/delete_account_success_binding.dart';
import 'package:safe_vpn/page/delete_account_success/delete_account_success_view.dart';
import 'package:safe_vpn/page/email_send/email_send_binding.dart';
import 'package:safe_vpn/page/email_send/email_send_view.dart';
import 'package:safe_vpn/page/login/login_binding.dart';
import 'package:safe_vpn/page/splash/splash_binding.dart';
import 'package:safe_vpn/page/splash/splash_view.dart';
import 'package:safe_vpn/page/subscribe/subscribe_binding.dart';
import 'package:safe_vpn/page/subscribe/subscribe_view.dart';
import 'package:safe_vpn/page/verification/verification_binding.dart';
import 'package:safe_vpn/page/verification/verification_view.dart';

import '../page/login/login_view.dart';
import '../page/withdraw/withdraw_binding.dart';
import '../page/withdraw/withdraw_view.dart';

class RouterManager {
  /// 首页
  static const String home = "/home";

  /// 开屏
  static const String splash = "/splash";

  /// 登入
  static const String login = "/login";

  /// 注册
  static const String register = "/register";

  /// 充值
  static const String recharge = "/recharge";

  /// 删除账户
  static const String deleteAccount = "/deleteAccount";

  /// 删除账户状态
  static const String deleteAccountStatus = "/deleteAccountStatus";

  /// 发送邮箱状态
  static const String sendEmailStatus = "/sendEmailStatus";

  /// 绑定推荐人
  static const String bindRefer = "/bindRefer";

  /// 提现
  static const String withDraw = "/withDraw";

  /// 提现记录
  static const String withDrawHistory = "/withDrawHistory";

  /// 支付成功页面
  static const String paySuccess = "/paySuccess";

  /// 我的页面
  static const String mineProfile = "/mineProfile";

  /// 设置
  static const String setting = "/setting";

  /// 设置搜索
  static const String settingSearch = "/settingSearch";

  /// 选择服务列表
  static const String selectServers = "/selectServers";

  /// 邀请好友
  static const String invite = "/invite";

  /// 邀请好友列表
  static const String inviteMembers = "/inviteMembers";

  /// 邀请历史列表
  static const String inviteRecords = "/inviteRecords";

  /// 校验验证码
  static const String verifyCode = "/verifyCode";

  static final pages = [
    GetPage(
      name: splash,
      page: () => const SplashPage(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: login,
      page: () => const LoginPage(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: recharge,
      page: () => const SubscribePage(),
      binding: SubscribeBinding(),
    ),
    GetPage(
      name: deleteAccount,
      page: () => const DeleteAccountPage(),
      binding: DeleteAccountBinding(),
    ),
    GetPage(
      name: sendEmailStatus,
      page: () => const EmailSendPage(),
      binding: EmailSendBinding(),
    ),
    GetPage(
      name: deleteAccountStatus,
      page: () => const DeleteAccountSuccessPage(),
      binding: DeleteAccountSuccessBinding(),
    ),
    GetPage(
      name: verifyCode,
      page: () => const VerificationPage(),
      binding: VerificationBinding(),
    ),
    GetPage(
      name: bindRefer,
      page: () => const BindSuperiorPage(),
      binding: BindSuperiorBinding(),
    ),
    GetPage(
      name: withDraw,
      page: () => const WithdrawPage(),
      binding: WithdrawBinding(),
    ),
  ];
}

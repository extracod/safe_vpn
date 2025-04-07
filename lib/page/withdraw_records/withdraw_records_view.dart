import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/utils/view_utils.dart';

import 'withdraw_records_logic.dart';

class WithdrawRecordsPage extends GetView<WithdrawRecordsLogic> {
  const WithdrawRecordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: ViewUtils.titleBar(title: "Withdraw Records".tr),body: Container());
  }
}

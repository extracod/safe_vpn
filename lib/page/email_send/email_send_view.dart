import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/gen/assets.gen.dart';
import 'package:safe_vpn/gen/colors.gen.dart';
import 'package:safe_vpn/utils/view_utils.dart';

import 'email_send_logic.dart';

class EmailSendPage extends GetView<EmailSendLogic> {
  const EmailSendPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewUtils.titleBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.images.iconEmailSentSuccess.image(width: 183, height: 165),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 37),
            child: Text(
              "Email has been sent".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: 17),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 37),
            child: Text(
              "send_email_desc".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorName.c85888A,
                fontSize: 14.sp
              ),
            ),
          ),
        ],
      )
    );
  }
}

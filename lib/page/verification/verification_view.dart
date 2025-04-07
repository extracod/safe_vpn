import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/gen/colors.gen.dart';
import 'package:safe_vpn/utils/toast_util.dart';
import 'package:safe_vpn/utils/view_utils.dart';

import '../../view/verification_code.dart';
import 'verification_logic.dart';

class VerificationPage extends GetView<VerificationLogic> {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewUtils.titleBar(),
      body: Container(
        padding: EdgeInsets.all(37),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Verification".tr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 32.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Code".tr,
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: 8),
            Container(
              width: 45,
              height: 5,
              decoration: BoxDecoration(
                color: ColorName.cFFA184,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "verification_desc".tr,
              style: TextStyle(color: Colors.black, fontSize: 16.sp),
            ),
            SizedBox(height: 28),
            VerificationCode(
              length: 5,
              cursorColor: ColorName.c56AD9A,
              fullBorder: true,
              fillColor: Colors.white,
              itemSize: 45,
              textStyle: TextStyle(fontSize: 16.sp,fontWeight: FontWeight.w800),
              margin: EdgeInsets.symmetric(horizontal: 4.5),
              underlineColor: ColorName.c56AD9A,
              underlineUnfocusedColor: Colors.transparent,
              onCompleted: (String code) {
                ToastUtil.showToasts("验证码=$code");
              },
              onEditing: (bool editing) {
                if (!editing) FocusScope.of(context).unfocus();
              },
            ),
            SizedBox(height: 29),
            Center(child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Resend code in".tr,
                    style: TextStyle(color: ColorName.c0F0B03, fontSize: 14.sp),
                  ),
                  TextSpan(
                    text: "00:16",
                    style: TextStyle(color: ColorName.c797979, fontSize: 14.sp),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

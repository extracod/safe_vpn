import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/view/primary_button.dart';

import '../../gen/assets.gen.dart';
import '../../utils/view_utils.dart';
import 'delete_account_success_logic.dart';

class DeleteAccountSuccessPage extends GetView<DeleteAccountSuccessLogic> {
  const DeleteAccountSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewUtils.titleBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Assets.images.iconDeleteAccountSuccess.image(width: 177, height: 165),
          SizedBox(height: 17),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "Account has been".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "deleted".tr,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 24.sp,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          SizedBox(height: 40),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18),
            child: PrimaryButton(onPressed: () {}, text: "Return Home".tr),
          ),
        ],
      ),
    );
  }
}

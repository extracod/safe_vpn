import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/manager/router_manager.dart';
import 'package:safe_vpn/view/primary_button.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../utils/view_utils.dart';
import 'delete_account_logic.dart';

class DeleteAccountPage extends GetView<DeleteAccountLogic> {
  const DeleteAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewUtils.titleBar(title: "Deleting an Account".tr),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Delete account on".tr,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "SafeVPN".tr,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 17,
                  bottom: 50,
                ),
                child: Text(
                  "delete_desc".tr,
                  style: TextStyle(color: ColorName.c85888A, fontSize: 14.sp),
                ),
              ),
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 11),
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                        color: ColorName.c56AD9A,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 18),
                        Assets.images.iconLoginEmail.image(
                          width: 24,
                          height: 24,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 21,
                            horizontal: 12,
                          ),
                          child: VerticalDivider(
                            width: 12,
                            thickness: 2,
                            color: ColorName.cC4C4C4,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            controller: controller.emailEditController,
                            maxLines: 1,
                            cursorColor: ColorName.c56AD9A,
                            focusNode: controller.emailEditFocusNode,
                            keyboardType: TextInputType.emailAddress,
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorName.c56AD9A,
                              fontWeight: FontWeight.bold,
                            ),
                            decoration: InputDecoration(
                              floatingLabelBehavior:
                              FloatingLabelBehavior.never,
                              border: InputBorder.none,
                              hintText: 'Enter email address'.tr,
                              hintStyle: TextStyle(
                                fontSize: 14,
                                color: ColorName.cAEACAC,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 18),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 51,
                    top: 0,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      color: ColorName.f0faf5,
                      child: Text(
                        "Email Address".tr,
                        style: TextStyle(
                          fontSize: 14,
                          color: ColorName.c37474F,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 35),
              PrimaryButton(onPressed: (){
                Get.toNamed(RouterManager.deleteAccountStatus);
                //Get.toNamed(RouterManager.sendEmailStatus);
                //Get.toNamed(RouterManager.verifyCode);
              }, text: "Submit".tr),
              SizedBox(height: 25),
            ],
          ),
        ),
      ),
    );
  }
}

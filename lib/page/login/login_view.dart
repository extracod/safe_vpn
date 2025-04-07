import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/gen/assets.gen.dart';
import 'package:safe_vpn/gen/colors.gen.dart';
import 'package:safe_vpn/manager/router_manager.dart';
import 'package:safe_vpn/utils/statusbar_util.dart';
import 'package:safe_vpn/utils/toast_util.dart';
import 'package:safe_vpn/view/primary_button.dart';

import 'login_logic.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            // 返回
            Padding(
              padding: EdgeInsets.only(
                top: StatusBarUtils.getStatusBarHeight() + 20,
                left: 26,
              ),
              child: GestureDetector(
                onTap: () {
                  ToastUtil.showToasts("关闭登录");
                  Get.back();
                },
                child: Assets.images.iconLoginClose.image(
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 113,
                      height: 191,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                        ),
                        gradient: LinearGradient(
                          colors: [ColorName.c00eaf0f9, ColorName.eaf0f9],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.only(bottom: 16),
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 40,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'FIX'.tr,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: ColorName.c56AD9A,
                            ),
                          ),
                          TextSpan(
                            text: 'VPN'.tr,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 48),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      width: double.infinity,
                      height: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: double.infinity,
                          height: 50,
                          child: Row(
                            children: [
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => controller.switchTab(0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          controller.tabIndex.value == 0
                                              ? ColorName.cFFA184
                                              : Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Log In".tr,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              controller.tabIndex.value == 0
                                                  ? ColorName.white
                                                  : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: GestureDetector(
                                  onTap: () => controller.switchTab(1),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color:
                                          controller.tabIndex.value == 1
                                              ? ColorName.cFFA184
                                              : Colors.transparent,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Sign Up".tr,
                                        style: TextStyle(
                                          fontSize: 14,
                                          color:
                                              controller.tabIndex.value == 1
                                                  ? ColorName.white
                                                  : Colors.black,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 23),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 11),
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color:
                              controller.selectEdIndex.value==1
                                      ? ColorName.c56AD9A
                                      : ColorName.cE6E6E6,
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
                    SizedBox(height: 17),
                    Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 11),
                          height: 70,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              color:
                                  controller.selectEdIndex.value==2
                                      ? ColorName.c56AD9A
                                      : ColorName.cE6E6E6,
                              width: 2,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(width: 18),
                              Assets.images.iconLoginPwd.image(
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
                                  controller: controller.pwdEditController,
                                  obscureText: !controller.showPwd.value,
                                  focusNode: controller.pwdEditFocusNode,
                                  maxLines: 1,
                                  cursorColor: ColorName.c56AD9A,
                                  keyboardType: TextInputType.visiblePassword,
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: ColorName.c56AD9A,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  decoration: InputDecoration(
                                    floatingLabelBehavior:
                                        FloatingLabelBehavior.never,
                                    border: InputBorder.none,
                                    hintText: 'Enter your password'.tr,
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: ColorName.cAEACAC,
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  controller.showPwd.value =
                                      !controller.showPwd.value;
                                },
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 18),
                                  child: Center(
                                    child: Image(
                                      image: AssetImage(
                                        controller.showPwd.value
                                            ? Assets.images.iconCloseEye.path
                                            : Assets.images.iconOpenEye.path,
                                      ),
                                      fit: BoxFit.scaleDown,
                                      width: 24,
                                      height: 24,
                                    ),
                                  ),
                                ),
                              ),
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
                              "Password".tr,
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
                    SizedBox(
                      height: 60,
                      child: Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'By signing up,I agree to the'.tr,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: ColorName.c37474F,
                                ),
                              ),
                              TextSpan(
                                text: 'private policy'.tr,
                                style: TextStyle(
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.bold,
                                  color: ColorName.c56AD9A,
                                ),
                                recognizer:
                                    TapGestureRecognizer()
                                      ..onTap = () {
                                        ToastUtil.showToasts("private policy");
                                      },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 18),
                    PrimaryButton(onPressed: (){
                      Get.offAndToNamed(RouterManager.withDraw);
                    }, text: "Log in".tr),
                    SizedBox(height: 28),
                    GestureDetector(
                      onTap: () {
                        ToastUtil.showToasts("Log in with Google");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Assets.images.iconLoginGoogle.image(
                            width: 20,
                            height: 20,
                          ),
                          SizedBox(width: 10),
                          Text(
                            "Log in with Google",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: ColorName.c37474F,
                              fontSize: 12.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 31),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

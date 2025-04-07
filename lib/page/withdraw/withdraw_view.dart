import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/utils/toast_util.dart';
import 'package:safe_vpn/utils/view_utils.dart';
import 'package:safe_vpn/view/primary_button.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import 'withdraw_logic.dart';

class WithdrawPage extends GetView<WithdrawLogic> {
  const WithdrawPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewUtils.titleBar(
        title: "Withdraw".tr,
        rightIcon: Assets.images.iconWithdrawRecord.path,
        onRight: () {
          // TODO 体现记录
          ToastUtil.showToasts("Withdraw Record");
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Obx(
            () => Column(
              children: [
                Container(
                  height: 125,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: ColorName.c56AD9A),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Assets".tr,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "10000",
                                    style: TextStyle(
                                      color: ColorName.c56AD9A,
                                      fontWeight: FontWeight.w800,
                                      fontSize: 30.sp,
                                    ),
                                  ),
                                  WidgetSpan(child: SizedBox(width: 8)),
                                  TextSpan(
                                    text: "Points".tr,
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              "≈\$1000.00",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Assets.images.iconAddCard.image(width: 123, height: 111),
                      SizedBox(width: 9),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50,
                  decoration: BoxDecoration(
                    color: ColorName.cEB5757,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "This is the hint!".tr,
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
                  ),
                ),
                SizedBox(height: 24),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 11),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: ColorName.cE6E6E6, width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 18),
                          Expanded(
                            child: TextField(
                              controller: controller.pointsEditController,
                              maxLines: 1,
                              cursorColor: ColorName.c56AD9A,
                              keyboardType: TextInputType.number,
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorName.c56AD9A,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: InputBorder.none,
                                hintText: 'Enter points'.tr,
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: ColorName.cAEACAC,
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // TODO 最大值
                              controller.pointsEditController.text = "10000";
                            },
                            child: Text(
                              "Max".tr,
                              style: TextStyle(
                                color: ColorName.c37474F,
                                fontSize: 14.sp,
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
                          "Points".tr,
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
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        controller.selectUstd.value =
                            !controller.selectUstd.value;
                      },
                      child: Container(
                        width: 124,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color:
                              controller.selectUstd.value
                                  ? ColorName.c56AD9A
                                  : Colors.transparent,
                          border: Border.all(
                            color:
                                controller.selectUstd.value
                                    ? Colors.transparent
                                    : ColorName.cDDEAE4,
                          ),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "USTD.TRC20".tr,
                          style: TextStyle(
                            color:
                                controller.selectUstd.value
                                    ? Colors.white
                                    : ColorName.c37474F,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        controller.selectUstd.value =
                            !controller.selectUstd.value;
                      },
                      child: Container(
                        width: 124,
                        height: 45,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color:
                              controller.selectUstd.value
                                  ? Colors.transparent
                                  : ColorName.c56AD9A,
                          border: Border.all(
                            color:
                                controller.selectUstd.value
                                    ? ColorName.cDDEAE4
                                    : Colors.transparent,
                          ),
                        ),
                        child: Text(
                          textAlign: TextAlign.center,
                          "USTD.TRC20".tr,
                          style: TextStyle(
                            color:
                                !controller.selectUstd.value
                                    ? Colors.white
                                    : ColorName.c37474F,
                            fontSize: 14.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 11),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: ColorName.cE6E6E6, width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20),
                          Expanded(
                            child: TextField(
                              controller: controller.accountEditController,
                              maxLines: 1,
                              cursorColor: ColorName.c56AD9A,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorName.c56AD9A,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: InputBorder.none,
                                hintText: 'Enter account'.tr,
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: ColorName.cAEACAC,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
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
                          "Account".tr,
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
                SizedBox(height: 14),
                Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 11),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        border: Border.all(color: ColorName.cE6E6E6, width: 2),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(width: 20),
                          Expanded(
                            child: TextField(
                              controller: controller.accountEditController,
                              maxLines: 1,
                              cursorColor: ColorName.c56AD9A,
                              keyboardType: TextInputType.text,
                              style: TextStyle(
                                fontSize: 14,
                                color: ColorName.c56AD9A,
                                fontWeight: FontWeight.bold,
                              ),
                              decoration: InputDecoration(
                                floatingLabelBehavior:
                                    FloatingLabelBehavior.never,
                                border: InputBorder.none,
                                hintText: 'Enter name'.tr,
                                hintStyle: TextStyle(
                                  fontSize: 14,
                                  color: ColorName.cAEACAC,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20),
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
                          "Name".tr,
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
                SizedBox(height: 43,),
                PrimaryButton(onPressed: (){
                  ToastUtil.showToasts("Submit");
                }, text: "Submit".tr)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

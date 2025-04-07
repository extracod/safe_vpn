import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/utils/toast_util.dart';
import 'package:safe_vpn/utils/view_utils.dart';

import '../../gen/assets.gen.dart';
import '../../gen/colors.gen.dart';
import '../../view/primary_button.dart';
import 'bind_superior_logic.dart';

class BindSuperiorPage extends GetView<BindSuperiorLogic> {
  const BindSuperiorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewUtils.titleBar(title: "Bind Referrer".tr),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
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
                          controller: controller.referrerCodeEditController,
                          maxLines: 1,
                          cursorColor: ColorName.c56AD9A,
                          keyboardType: TextInputType.emailAddress,
                          style: TextStyle(
                            fontSize: 14,
                            color: ColorName.c56AD9A,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: InputDecoration(
                            floatingLabelBehavior: FloatingLabelBehavior.never,
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
                          ToastUtil.showToasts(controller.referrerCodeEditController.text);
                        },
                        child: Assets.images.iconCopy.image(
                          width: 40,
                          height: 40,
                          alignment: Alignment.center,
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
                      "Referrer code".tr,
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
            SizedBox(height: 20),
            PrimaryButton(onPressed: () {}, text: "Submit".tr),
          ],
        ),
      ),
    );
  }
}

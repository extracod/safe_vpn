import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/data/subscribe_bean.dart';
import 'package:safe_vpn/gen/colors.gen.dart';
import 'package:safe_vpn/manager/router_manager.dart';
import 'package:safe_vpn/utils/view_utils.dart';

import 'subscribe_logic.dart';

class SubscribePage extends GetView<SubscribeLogic> {
  const SubscribePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ViewUtils.titleBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Get A Plan".tr,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "That Works For You".tr,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w800,
                    fontSize: 24.sp,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 25,
                  right: 25,
                  top: 17,
                  bottom: 40,
                ),
                child: Text(
                  "sub_desc".tr,
                  style: TextStyle(color: ColorName.c85888A, fontSize: 14.sp),
                ),
              ),
              Obx(
                () => Column(
                  children:
                      controller.subscribeList
                          .map(
                            (SubscribeBean subscribeItem) => Container(
                              height: 86,
                              margin: EdgeInsets.only(bottom: 10),
                              padding: EdgeInsets.symmetric(horizontal: 18),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "\$${subscribeItem.price}",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 30.sp,
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                  SizedBox(width: 32),
                                  Text(
                                    "${subscribeItem.time} Days",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                    ),
                                  ),
                                  Spacer(),
                                  GestureDetector(onTap: (){
                                    // 订阅
                                    Get.toNamed(RouterManager.deleteAccount);
                                  },child: Container(
                                    width: 91,
                                    height: 43,
                                    decoration: BoxDecoration(
                                      color: ColorName.c56AD9A,
                                      borderRadius: BorderRadius.circular(50),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "Get Started".tr,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 10.sp,
                                        ),
                                      ),
                                    ),
                                  )),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

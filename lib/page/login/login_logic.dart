import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:safe_vpn/utils/statusbar_util.dart';

class LoginController extends GetxController {

  var tabIndex = 0.obs;

  var showPwd = true.obs;

  var emailEditController = TextEditingController();
  var emailEditFocusNode = FocusNode();

  var pwdEditController = TextEditingController();
  var pwdEditFocusNode = FocusNode();

  var selectEdIndex = 0.obs;

  /// 切换Tab
  void switchTab(int index){
    tabIndex.value = index;
  }

  @override
  void onInit() {
    super.onInit();
    StatusBarUtils.darkStatusBar(true);
    emailEditFocusNode.addListener((){
      if(emailEditFocusNode.hasFocus){
        selectEdIndex.value = 1;
      }else{
        selectEdIndex.value = 2;
      }
    });
  }

}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:safe_vpn/gen/colors.gen.dart';
import 'package:safe_vpn/manager/language_manager.dart';
import 'package:safe_vpn/utils/statusbar_util.dart';

import 'manager/router_manager.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScreenUtilInit(
    designSize: Size(375, 814),
    builder: (_, child) {
      return RefreshConfiguration(
        footerBuilder: () => const ClassicFooter(),
        headerBuilder: () => const ClassicHeader(),
        hideFooterWhenNotFull: false,
        child: GetMaterialApp(
          localizationsDelegates: const [
            RefreshLocalizations.delegate,
            DefaultWidgetsLocalizations.delegate,
            DefaultMaterialLocalizations.delegate,
            DefaultCupertinoLocalizations.delegate,
          ],
          translations: LanguageManager(),
          locale: Locale("en","US"),
          fallbackLocale: Locale("en","US"),
          defaultTransition: Transition.rightToLeftWithFade,
          theme: ThemeData(scaffoldBackgroundColor: ColorName.f0faf5),
          home: child,
          popGesture: true,
          debugShowCheckedModeBanner: false,
          getPages: RouterManager.pages,
          initialRoute: RouterManager.splash,
          builder: EasyLoading.init()
        ),
      );
    }
  ));
  StatusBarUtils.translateStatusBar();
}

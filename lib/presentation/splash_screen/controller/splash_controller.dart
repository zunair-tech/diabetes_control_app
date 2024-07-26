import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/splash_screen/models/splash_model.dart';

import '../../../data/store_data/pref_data.dart';


class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  @override
  void onReady() {
    Future.delayed(const Duration(milliseconds: 3000), () async {
      bool isIntro = await PrefData.getIntro();
      bool isLogin = await PrefData.getLogin();
      bool isInfo = await PrefData.getInfo();

      if (isIntro) {
        Get.toNamed(AppRoutes.basicDetailsScreen,);
      }
      else {
        if (isLogin) {
          Get.toNamed(AppRoutes.logInScreen,);
        }
        else {
          if (isInfo) {
            Get.toNamed(AppRoutes.homePageContainerScreen,);
          }
          else {
            Get.toNamed(AppRoutes.homePage,);
          }
        }
      }}
    );
  }
}

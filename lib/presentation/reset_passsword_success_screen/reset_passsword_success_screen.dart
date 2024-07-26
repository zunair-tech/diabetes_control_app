import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/reset_passsword_success_controller.dart';

class ResetPassswordSuccessScreen
    extends GetWidget<ResetPassswordSuccessController> {
  const ResetPassswordSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        return onTapGotologin();
      },
      child: Scaffold(
          backgroundColor: appTheme.whiteA700,
          body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgGroup34160DeepPurple400,
                      color: Color(0xFF62B47F),
                      height: getSize(154),
                      width: getSize(154)),
                  Padding(
                      padding: getPadding(top: 35),
                      child: Text("msg_password_reset_successfully".tr,
                          style: theme.textTheme.titleLarge)),
                  Container(
                      width: getHorizontalSize(308),
                      margin: getMargin(top: 12),
                      child: Text("msg_you_have_successfully2".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  CustomElevatedButton(
                      text: "lbl_go_to_login2".tr,
                      margin: getMargin(
                          left: 85, top: 21, right: 85, bottom: 5),
                      buttonStyle: CustomButtonStyles.fillPrimaryTL27,
                      onTap: () {
                        onTapGotologin();
                      })
                ]),
          )),
    );
  }
  
  onTapGotologin() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}

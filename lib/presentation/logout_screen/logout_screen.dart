import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

import 'controller/logout_controller.dart';

class LogoutScreen extends GetWidget<LogoutController> {
  const LogoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: appTheme.black900.withOpacity(0.4),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    color: appTheme.black900.withOpacity(0.4),
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgLogout),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 27, right: 27),
                    child: Container(
                        margin: getMargin(bottom: 5),
                        padding: getPadding(
                            left: 30, top: 31, right: 30, bottom: 31),
                        decoration: AppDecoration.white.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder16),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("msg_are_you_sure_you".tr,
                                  style:
                                      CustomTextStyles.titleMediumBluegray900),
                              Padding(
                                  padding: getPadding(top: 27, bottom: 2),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Expanded(
                                            child: CustomOutlinedButton(
                                                height: getVerticalSize(46),
                                                text: "lbl_cancel".tr,
                                                margin: getMargin(right: 10),
                                                buttonStyle: CustomButtonStyles
                                                    .outlinePrimary,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .titleMediumPrimary)),
                                        Expanded(
                                            child: CustomElevatedButton(
                                                height: getVerticalSize(46),
                                                text: "lbl_log_out".tr,
                                                margin: getMargin(left: 10),
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimaryTL8,
                                                onTap: () {
                                                  onTapLogout();
                                                }
                                                )
                                        )
                                      ]
                                  )
                              )
                            ]
                        )
                    )
                )
            )
        )
    );
  }

  onTapLogout() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}

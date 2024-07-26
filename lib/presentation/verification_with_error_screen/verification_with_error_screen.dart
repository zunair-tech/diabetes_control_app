import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/app_bar/appbar_image.dart';
import 'package:diabetes_control_app/widgets/app_bar/appbar_title.dart';
import 'package:diabetes_control_app/widgets/app_bar/custom_app_bar.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

import 'controller/verification_with_error_controller.dart';

class VerificationWithErrorScreen
    extends GetWidget<VerificationWithErrorController> {
  const VerificationWithErrorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 22, bottom: 22),
                          decoration: AppDecoration.outlineGray,
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(42),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin:
                                      getMargin(left: 18, top: 6, bottom: 3),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_verification".tr))),
                      Container(
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(313),
                                    margin: getMargin(left: 40, right: 43),
                                    child: Text("msg_please_provide_the".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: theme.textTheme.bodyLarge)),
                                Padding(
                                    padding: getPadding(top: 33),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "lbl_code_sent_to".tr,
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(
                                              text:
                                                  "msg_ronaldrichards_gmail_com"
                                                      .tr,
                                              style: CustomTextStyles
                                                  .titleMediumBluegray900SemiBold)
                                        ]),
                                        textAlign: TextAlign.left)),
                                Obx(() => CustomPinCodeTextField(
                                    context: context,
                                    margin: getMargin(top: 17, right: 1),
                                    controller: controller.otpController.value,
                                    onChanged: (value) {})),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(top: 10),
                                        child: Text(
                                            "msg_please_enter_a_valid2".tr,
                                            style: CustomTextStyles
                                                .bodyLargeRed700))),
                                CustomElevatedButton(
                                    text: "lbl_verify".tr,
                                    margin: getMargin(top: 40),
                                    onTap: () {
                                      onTapVerify();
                                    }),
                                Padding(
                                    padding: getPadding(top: 18, bottom: 5),
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text: "msg_don_t_receive_a2".tr,
                                              style: theme.textTheme.bodyLarge),
                                          TextSpan(
                                              text: "lbl_resend_now".tr,
                                              style: CustomTextStyles
                                                  .bodyLargePrimary_1)
                                        ]),
                                        textAlign: TextAlign.left))
                              ]))
                    ]))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  /// Navigates to the resetPassswordScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the resetPassswordScreen.
  onTapVerify() {
    Get.toNamed(
      AppRoutes.resetPassswordScreen,
    );
  }
}

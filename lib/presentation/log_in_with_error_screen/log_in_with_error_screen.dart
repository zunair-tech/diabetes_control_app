import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/validation_functions.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/log_in_with_error_controller.dart';

// ignore_for_file: must_be_immutable
class LogInWithErrorScreen extends GetWidget<LogInWithErrorController> {
  LogInWithErrorScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.white,
        body: Form(
            key: _formKey,
            child: Container(
                width: double.maxFinite,
                padding:
                    getPadding(left: 16, top: 41, right: 16, bottom: 41),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(top: 6),
                          child: Text("lbl_log_in".tr,
                              style: theme.textTheme.headlineMedium)),
                      Padding(
                          padding: getPadding(top: 14),
                          child: Text("msg_please_enter_the".tr,
                              style: theme.textTheme.bodyLarge)),
                      Padding(
                          padding: getPadding(top: 45),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_email_address".tr,
                                    style: CustomTextStyles
                                        .bodyLargeGray600_1),
                                CustomTextFormField(
                                    controller: controller.emailController,
                                    margin: getMargin(top: 6),
                                    hintText: "lbl_email_address".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray600_1,
                                    textInputType:
                                        TextInputType.emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired: true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    }),
                                Padding(
                                    padding: getPadding(top: 6),
                                    child: Text(
                                        "msg_please_enter_a_valid".tr,
                                        style: CustomTextStyles
                                            .bodyLargeRed700))
                              ])),
                      Padding(
                          padding: getPadding(top: 16),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_password".tr,
                                    style: CustomTextStyles
                                        .bodyLargeGray600_1),
                                CustomTextFormField(
                                    controller:
                                        controller.passwordController,
                                    margin: getMargin(top: 6),
                                    hintText: "lbl_password".tr,
                                    hintStyle:
                                        CustomTextStyles.bodyLargeGray600_1,
                                    textInputAction: TextInputAction.done,
                                    textInputType:
                                        TextInputType.visiblePassword,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidPassword(value,
                                              isRequired: true))) {
                                        return "Please enter valid password";
                                      }
                                      return null;
                                    },
                                    obscureText: true),
                                Padding(
                                    padding: getPadding(top: 7),
                                    child: Text("msg_please_enter_a_8".tr,
                                        style: CustomTextStyles
                                            .bodyLargeRed700))
                              ])),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Padding(
                              padding: getPadding(top: 16),
                              child: Text("msg_forgot_password".tr,
                                  style: theme.textTheme.bodyLarge))),
                      CustomElevatedButton(
                          text: "lbl_log_in".tr,
                          margin: getMargin(top: 31),
                          onTap: () {
                            onTapLogin();
                          }),
                      Padding(
                          padding: getPadding(top: 26),
                          child: Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding:
                                        getPadding(top: 10, bottom: 10),
                                    child: SizedBox(
                                        width: getHorizontalSize(177),
                                        child: Divider())),
                                Text("lbl_or".tr,
                                    style: CustomTextStyles
                                        .titleMediumBluegray900),
                                Padding(
                                    padding:
                                        getPadding(top: 10, bottom: 10),
                                    child: SizedBox(
                                        width: getHorizontalSize(177),
                                        child: Divider()))
                              ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowgoogle();
                          },
                          child: Padding(
                              padding: getPadding(top: 27),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomElevatedButton(
                                            text: "lbl_google".tr,
                                            margin: getMargin(right: 8),
                                            leftIcon: Container(
                                                margin:
                                                    getMargin(right: 16),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGoogle)),
                                            buttonStyle: CustomButtonStyles
                                                .fillGrayTL8,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumBluegray900SemiBold16)),
                                    Expanded(
                                        child: CustomElevatedButton(
                                            text: "lbl_apple".tr,
                                            margin: getMargin(left: 8),
                                            leftIcon: Container(
                                                margin:
                                                    getMargin(right: 16),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFire)),
                                            buttonStyle: CustomButtonStyles
                                                .fillGrayTL8,
                                            buttonTextStyle: CustomTextStyles
                                                .titleMediumBluegray900SemiBold16))
                                  ]))),
                      Spacer(),
                      GestureDetector(
                          onTap: () {
                            onTapTxtDonthaveanaccount();
                          },
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_don_t_have_an_account2".tr,
                                    style: theme.textTheme.bodyLarge),
                                TextSpan(
                                    text: "lbl_sign_up".tr,
                                    style:
                                        CustomTextStyles.bodyLargePrimary_1)
                              ]),
                              textAlign: TextAlign.left))
                    ]))));
  }

  /// Navigates to the homePageContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homePageContainerScreen.
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }

  /// Navigates to the homePageContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homePageContainerScreen.
  onTapRowgoogle() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the signUpScreen.
  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}

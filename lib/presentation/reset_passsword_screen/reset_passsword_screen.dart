import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'controller/reset_passsword_controller.dart';

// ignore: must_be_immutable
class ResetPassswordScreen extends GetWidget<ResetPassswordController> {
   ResetPassswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        return onTapForgot();
      },
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.white,
          body: SafeArea(
            child: Form(
              key:_formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppBarText(
                     backIcon: true,
                     text: 'Reset password',
                      click:() {
                       print('is Clicked');
                       onTapForgot();
                      },
                    ),
                    Divider(
                     thickness: getSize(1.5),
                     color: appTheme.gray90014,
                    ),
                    Padding(
                      padding:getPadding(top: 8),
                      child: Text("msg_please_provide_the".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge),
                    ),
                    Padding(
                      padding: getPadding(top: 30,left: 16,right: 16,bottom: 16),
                      child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment.start,
                          children: [
                           Padding(
                             padding: getPadding(bottom: 6),
                             child: Text("lbl_new_password".tr,
                                 style: CustomTextStyles
                                     .bodyLargeGray600_1),
                           ),
                            Obx(() => CustomTextFormField(
                                controller: controller
                                    .newpasswordController,
                                margin: getMargin(top: 5),
                                suffix: InkWell(
                                    onTap: () {
                                      controller.isShowPassword
                                              .value =
                                          !controller
                                              .isShowPassword
                                              .value;
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        child: CustomImageView(
                                            svgPath: controller
                                                    .isShowPassword
                                                    .value
                                                ? ImageConstant
                                                    .imgIcEye
                                                : ImageConstant
                                                    .imgIcEye))),
                                hintText: 'Enter new password',
                                suffixConstraints: BoxConstraints(
                                    maxHeight:
                                        getVerticalSize(54)),
                                obscureText: controller
                                    .isShowPassword.value,
                                validator: (pass) {
                                  if (pass == null || pass.isEmpty) {
                                    return "Please Entter New Password";
                                  }
                                  return null;
                                },

                                fillColor: appTheme.white))
                          ]),
                    ),
                    Padding(
                      padding: getPadding(left: 16,right: 16),
                      child: Column(
                          crossAxisAlignment:
                              CrossAxisAlignment.start,
                          mainAxisAlignment:
                              MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding:getPadding(bottom: 6),
                              child: Text("msg_confirm_password".tr,
                                  style: CustomTextStyles
                                      .bodyLargeGray600_1),
                            ),
                            Obx(() => CustomTextFormField(
                                controller: controller
                                    .confirmpasswordController,
                                margin: getMargin(top: 5),
                                textInputAction:
                                    TextInputAction.done,
                                hintText: 'Enter confirm password',
                                suffix: InkWell(
                                    onTap: () {
                                      controller.isShowPassword1
                                              .value =
                                          !controller
                                              .isShowPassword1
                                              .value;
                                    },
                                    child: Container(
                                        margin: getMargin(
                                            left: 30,
                                            top: 15,
                                            right: 16,
                                            bottom: 15),
                                        child: CustomImageView(
                                            svgPath: controller
                                                    .isShowPassword1
                                                    .value
                                                ? ImageConstant
                                                    .imgIcEye
                                                : ImageConstant
                                                    .imgIcEye))),
                                validator: (rePass) {
                                  if (rePass == null || rePass.isEmpty) {
                                    return "Both Pass are not Matched ";
                                  }
                                  return null;
                                },
                                suffixConstraints: BoxConstraints(
                                    maxHeight:
                                        getVerticalSize(54)),
                                obscureText: controller
                                    .isShowPassword1.value))
                          ]),
                    ),
                    CustomElevatedButton(
                        text: "lbl_reset_password".tr,
                        margin: getMargin(top: 30, left: 16,right: 16),
                        onTap: () {
                         if(_formKey.currentState!.validate()){

                           onTapResetpassword();
                           controller.newpasswordController.clear();
                           controller.confirmpasswordController.clear();
                         }
                         else{
                           controller.newpasswordController.clear();
                           controller.confirmpasswordController.clear();

                         }
                          }
                        )
                  ]),
            ),
          )),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }
  onTapForgot(){
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }

  
  onTapResetpassword() {
    Get.toNamed(
      AppRoutes.resetPassswordSuccessScreen,
    );
  }
}

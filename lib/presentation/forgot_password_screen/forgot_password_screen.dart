import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/core/utils/validation_functions.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/forgot_password_controller.dart';

// ignore_for_file: must_be_immutable
class ForgotPasswordScreen extends GetWidget<ForgotPasswordController> {
  ForgotPasswordScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        return onTapBack();
      },
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.white,
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                     AppBarText(
                      text: 'Forgot password',
                      backIcon: true,
                       click: () {
                         Get.toNamed(AppRoutes.logInScreen);
                       },

                     ),
                      Divider(
                       color: appTheme.gray90014,
                       thickness: getSize(1.5),
                      ),
                      Container(
                          padding: getPadding(
                              left: 16, top: 12, right: 16, bottom: 12),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
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
                                  padding: getPadding(top: 30,bottom: 6),
                                  child: Text("lbl_email_address".tr,
                                      style: CustomTextStyles
                                          .bodyLargeGray600_1),
                                ),
                                CustomTextFormField(
                                  autofocus: false,
                                    controller: controller
                                        .emailController,
                                    margin: getMargin(top: 6),
                                    hintText:
                                        "lbl_email_address".tr,
                                    hintStyle: CustomTextStyles
                                        .bodyLargeGray600_1,
                                    textInputAction:
                                        TextInputAction.done,
                                    textInputType: TextInputType
                                        .emailAddress,
                                    validator: (value) {
                                      if (value == null ||
                                          (!isValidEmail(value,
                                              isRequired:
                                                  true))) {
                                        return "Please enter valid email";
                                      }
                                      return null;
                                    }),

                                CustomElevatedButton(
                                    text: "lbl_send".tr,
                                    margin: getMargin(top: 30,),
                                    onTap: () {
                                      if(_formKey.currentState!.validate()){
                                        controller.emailController.clear();
                                        onTapSend();
                                      }
                                      else{}
                                    })
                              ]))
                    ])),
          )),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }

  onTapSend() {
    Get.toNamed(
      AppRoutes.verificationScreen,
    );
  }

  onTapBack() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}

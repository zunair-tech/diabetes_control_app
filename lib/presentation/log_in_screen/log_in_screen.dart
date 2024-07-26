import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/validation_functions.dart';
import 'package:diabetes_control_app/presentation/log_in_screen/widget/select_type_account.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../data/store_data/pref_data.dart';
import 'controller/log_in_controller.dart';

// ignore_for_file: must_be_immutable
class LogInScreen extends GetWidget<LogInController> {
  LogInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            backgroundColor: Colors.white,
            shape:  RoundedRectangleBorder(borderRadius:
            BorderRadius.all(Radius.circular(16))),
            insetPadding: getPadding(left: getSize(16),right: getSize(16)),
            title: Padding(
              padding: getPadding(left: getSize(50),right: getSize(50)),
              child: Text('Are you sure you want to Exit?',style: TextStyle(
                color: Colors.black,
                fontSize: getFontSize(18),
                fontWeight: FontWeight.w600,
              ),),
            ),

            actions: <Widget>[
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Padding(
                        padding: getPadding(bottom: getSize(16)),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Color(0xFF62B47F),
                                width: getSize(1.5),
                              )
                          ),
                          child: Padding(
                            padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                            child: Center(
                              child: Text(
                                'No',style: TextStyle(
                                color: Color(0xFF62B47F),
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700,
                              ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: getSize(20),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: ()  {
                        controller.onExit();
                        controller.update();
                      },
                      child: Padding(
                        padding: getPadding(bottom: getSize(20)),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: Color(0xFF62B47F),
                          ),
                          child: Padding(
                            padding:  getPadding(top: getSize(14),bottom: getSize(14)),
                            child: Center(
                              child: Text(
                                'Yes',style: TextStyle(
                                color: Colors.white,
                                fontSize: getFontSize(18),
                                fontWeight: FontWeight.w700,
                              ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
        return Future(() => false);
      },
      child: Scaffold(
          // resizeToAvoidBottomInset: false,
          backgroundColor: Colors.white,
          body: SafeArea(
            child: Form(
                key: _formKey,
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: getSize(16)),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(top: 40),
                          child: Text("lbl_log_in".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: theme.textTheme.headlineMedium),
                        ),

                        Padding(
                            padding: getPadding(top: 8),
                            child: Text("msg_please_enter_the".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: theme.textTheme.bodyLarge)),
                        Expanded(
                          child: ListView(
                            children: [
                              Padding(
                                  padding: getPadding(top: 40),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_email_address".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            CustomTextStyles.bodyLargeGray600),
                                        CustomTextFormField(
                                          autofocus: false,
                                          controller: controller.emailController,
                                          margin: getMargin(top: 6),
                                          textStyle:
                                          CustomTextStyles.bodyLargeGray600,
                                          hintText: "Email address".tr,
                                          textInputAction: TextInputAction.next,
                                          textInputType:
                                          TextInputType.emailAddress,
                                          validator: (value) {
                                            if (value == null ||
                                                (!isValidEmail(value,
                                                    isRequired: true))) {
                                              return "Please enter a valid email address";
                                            }
                                            return null;
                                          },
                                          filled: true,

                                        )
                                      ])),
                              Padding(
                                  padding: getPadding(top: 18),
                                  child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("lbl_password".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                            CustomTextStyles.bodyLargeGray600),
                                        CustomTextFormField(
                                          autofocus: false,
                                          fillColor: Colors.transparent,
                                          controller:
                                          controller.passwordController,
                                          margin: getMargin(top: 6),

                                          textStyle:
                                          CustomTextStyles.bodyLargeGray600,
                                          hintText: "Password".tr,

                                          textInputType:
                                          TextInputType.visiblePassword,

                                          validator: (password) {
                                            if (password == null || password.isEmpty) {
                                              return'Please enter a 8 digit password';
                                            }
                                            return null;
                                          },
                                          alignment: Alignment.topLeft,
                                          obscureText: true,
                                          filled: true,
                                        )
                                      ]
                                  )
                              ),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: GestureDetector(
                                      onTap: () {
                                        onTapTxtForgotpassword();
                                      },
                                      child: Padding(
                                          padding: getPadding(top: 26),
                                          child: Text("Forgot password ?".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: theme.textTheme.bodyLarge)))),
                              CustomElevatedButton(
                                  text: "lbl_log_in".tr,
                                  margin: getMargin(top: getSize(30)),
                                  buttonStyle: CustomButtonStyles.fillPrimaryTL8
                                      .copyWith(
                                      fixedSize:
                                      WidgetStateProperty.all<Size>(Size(
                                          double.maxFinite,
                                          getSize(50)))),
                                  buttonTextStyle: theme.textTheme.titleMedium!,
                                  onTap: () {
                                    if(_formKey.currentState!.validate()){
                                      PrefData.setLogin(false);
                                      onTapLogin();
                                      controller.emailController.clear();
                                      controller.passwordController.clear();
                                    }
                                  }),
                              Padding(
                                  padding: getPadding(top: 24,bottom: 24),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Divider(
                                          color: Color(0xFFE7E7E7),
                                          thickness: getHorizontalSize(1),
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(left: 9.87,right: 9.87),
                                        child: Text("lbl_or".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: CustomTextStyles.titleMediumBluegray900),
                                      ),
                                      Expanded(
                                        child: Divider(
                                          color: Color(0xFFE7E7E7),
                                          thickness: getHorizontalSize(1),
                                        ),
                                      )
                                    ],
                                  )),
                              SelectAccountType(),
                            ],
                          ),
                        ),
                        // Spacer(),
                        GestureDetector(
                            onTap: () {
                              onTapTxtDonthaveanaccount();
                            },
                            child: Padding(
                              padding:  EdgeInsets.only(bottom: getSize(25)),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "msg_don_t_have_an_account2".tr,
                                        style: theme.textTheme.bodyLarge),
                                    TextSpan(
                                        text: "lbl_sign_up".tr,
                                        style:
                                        CustomTextStyles.bodyLargePrimary)
                                  ]),
                                  textAlign: TextAlign.left),
                            ))
                      ]),
                )
            ),
          )
      ),
    );
  }

  onTapTxtForgotpassword() {
    Get.toNamed(
      AppRoutes.forgotPasswordScreen,
    );
  }
  onTapLogin() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }


  onTapRowgoogle() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }

  onTapTxtDonthaveanaccount() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }
}

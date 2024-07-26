import 'package:country_pickers/country.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/sign_up_screen/widget/select_type.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_phone_number.dart';
import 'controller/sign_up_controller.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: appTheme.white,
      body: SafeArea(
        child: Form(
            key: _formKey,
            child: Column(

                // padding: EdgeInsets.only(left: 16,right: 16,top: 65),
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(top: 40),
                    child: Text("lbl_sign_up".tr,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.headlineMedium),
                  ),
                  Padding(
                      padding: getPadding(top: 8),
                      child: Text("msg_please_enter_the".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(
                    height: getSize(40),
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Flexible(
                        child: ListView(
                            shrinkWrap: true,
                            padding: getPadding(
                              left: getSize(16),
                              right: getSize(16),
                            ),
                            physics: BouncingScrollPhysics(),
                            children: [
                              Text("lbl_full_name".tr,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: CustomTextStyles.bodyLargeGray600_1),
                              CustomTextFormField(
                                autofocus: false,
                                controller: controller.fullNameController,
                                margin: getMargin(top: 4),
                                textInputType: TextInputType.name,
                                textInputAction: TextInputAction.next,
                                hintText: "Enter Full Name".tr,
                                filled: true,
                                validator: (name) {
                                  if (name == null || name.isEmpty) {
                                    return "Please enter a valid Name";
                                  }
                                  return null;
                                },
                              ),
                              Padding(
                                padding: getPadding(top: getSize(16)),
                                child: Text("lbl_email_address".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLargeGray600_1),
                              ),
                              CustomTextFormField(
                                autofocus: false,
                                controller: controller.emailController,
                                margin: getMargin(top: 4),
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.emailAddress,
                                hintText: "Enter Email".tr,
                                filled: true,
                                validator: (email) {
                                  if (email == null || email.isEmpty) {
                                    return "Please enter a valid Email";
                                  }
                                  return null;
                                },
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          top: getSize(16), bottom: getSize(6)),
                                      child: Text("lbl_phone_number".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: CustomTextStyles
                                              .bodyLargeGray600_1))),
                              Obx(() => CustomPhoneNumber(
                                    country: controller.selectedCountry.value,
                                    controller:
                                        controller.phoneNumberController,
                                    onTap: (Country country) {
                                      controller.selectedCountry.value =
                                          country;
                                    },
                                  )),
                              Padding(
                                padding: getPadding(top: getSize(16)),
                                child: Text("lbl_password".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: CustomTextStyles.bodyLargeGray600_1),
                              ),
                              CustomTextFormField(
                                autofocus: false,
                                controller: controller.passwordController,
                                margin: getMargin(top: 4),
                                obscureText: true,
                                suffix: InkWell(
                                    onTap: () {
                                      controller.isShowPassword.value =
                                          !controller.isShowPassword.value;
                                    },
                                    child: Container(
                                        margin: getMargin(
                                          left: getSize(15),
                                          top: getSize(10),
                                          right: getSize(16),
                                          bottom: getSize(10),
                                        ),
                                        child: CustomImageView(
                                            svgPath:
                                                controller.isShowPassword.value
                                                    ? ImageConstant.imgIcEye
                                                    : ImageConstant.imgIcEye))),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: getSize(40)),
                                hintText: "Enter Password".tr,
                                textInputAction: TextInputAction.done,
                                filled: true,
                                validator: (password) {
                                  if (password == null || password.isEmpty) {
                                    return "Please enter a valid Password";
                                  }
                                  return null;
                                },
                              ),
                            ]),
                      ),
                      Padding(
                        padding: getPadding(left: 16, right: 16),
                        child: CustomElevatedButton(
                            text: "lbl_sign_up".tr,
                            margin: getMargin(top: 24),
                            buttonStyle: CustomButtonStyles.fillPrimaryTL8
                                .copyWith(
                                    fixedSize: WidgetStateProperty.all<Size>(
                                        Size(double.maxFinite, getSize(54)))),
                            buttonTextStyle: theme.textTheme.titleMedium!,
                            onTap: () {
                              if (_formKey.currentState!.validate()) {
                                if (_formKey.currentState!.validate()) {
                                  controller.emailController.clear();
                                  controller.passwordController.clear();
                                }
                                Get.back();
                              } else {}
                            }),
                      ),
                      Padding(
                          padding: getPadding(top: 24),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  thickness: getSize(1.5),
                                  color: appTheme.gray90014,
                                ),
                              ),
                              Padding(
                                padding: getPadding(left: 9.87, right: 9.87),
                                child: Text("lbl_or".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .titleMediumBluegray900),
                              ),
                              Expanded(
                                child: Divider(
                                  thickness: getSize(1.5),
                                  color: appTheme.gray90014,
                                ),
                              )
                            ],
                          )),
                      SelectType(),
                    ],
                  )),
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                            padding: getPadding(bottom: 26),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_already_have_an2".tr,
                                      style: theme.textTheme.bodyLarge),
                                  TextSpan(
                                      text: "lbl_sign_in".tr,
                                      style: CustomTextStyles.bodyLargePrimary)
                                ]),
                                textAlign: TextAlign.left)),
                      ))
                ])),
      ),
    );
  }

  onTapSignup() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }

  onTapRowgoogle() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }

  onTapTxtAlreadyhavean() {
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}

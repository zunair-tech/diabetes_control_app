import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_icon_button.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/edit_profile_controller.dart';

// ignore_for_file: must_be_immutable
class EditProfileScreen extends GetWidget<EditProfileController> {
  EditProfileScreen({Key? key}) : super(key: key);

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
          resizeToAvoidBottomInset: false,
          backgroundColor: appTheme.white,
          body: Form(
              key: _formKey,
              child: SafeArea(
                child: GetBuilder<EditProfileController>(builder: (controller) {

                  return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppBarText(
                          backIcon: true,
                          text: 'Edit profile',
                          click: () => Get.back(),
                        ),
                        Divider(
                            color: appTheme.gray90014,
                            thickness: getSize(1.50)
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Padding(
                            padding: getPadding(top: 40,bottom: 40,left: 16,right: 16),
                            child: SizedBox(
                                height: getSize(104),
                                width: getSize(104),
                                child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant
                                              .imgEllipse225,
                                          height: getSize(104),
                                          width: getSize(104),
                                          radius: BorderRadius.circular(
                                              getHorizontalSize(52)),
                                          alignment: Alignment.center),
                                      CustomIconButton(
                                          height: 34,
                                          width: 34,
                                          padding: getPadding(all: 6),
                                          alignment:
                                          Alignment.bottomRight,
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgCamera))
                                    ])),
                          ),
                        ),
                        Padding(
                          padding: getPadding(left: 16,bottom: 6),
                          child: Text("lbl_full_name2".tr,
                              style: theme
                                  .textTheme.bodyLarge),
                        ),
                        Padding(
                          padding: getPadding(left: 16,right: 16),
                          child: CustomTextFormField(
                            controller: controller.fullNameController,

                              margin: getMargin(top: 8,right: 16,left: 16,),
                              hintText:
                              "Enter Full Name".tr),
                        ),

                        Padding(
                          padding: getPadding(top: 16,left: 16,bottom: 6),
                          child: Text("lbl_email_address".tr,
                              style: theme
                                  .textTheme.bodyLarge),
                        ),
                        Padding(
                          padding: getPadding(left: 16,right: 16),
                          child: CustomTextFormField(
                              controller: controller
                                  .emailController,
                              margin: getMargin(right: 16,left: 16,),
                              hintText:
                              "Enter Email Address".tr),
                        ),
                        Padding(
                          padding: getPadding(top: 16,left: 16,bottom: 6),
                          child: Text("lbl_phone_number".tr,
                              style: theme
                                  .textTheme.bodyLarge),
                        ),
                        Padding(
                          padding: getPadding(left: 16,right: 16),
                          child: CustomTextFormField(
                            textInputAction: TextInputAction.done,
                              controller: controller
                                  .phoneNumberController,
                              margin: getMargin(right: 16,left: 16,),
                              hintText:
                              "Enter Phone Number",),
                        ),
                      ]);
                },init: EditProfileController(),)
              )),
          bottomNavigationBar: CustomElevatedButton(
            onTap: () {
              onTapBack();
            },
              text: "lbl_save_changes".tr,
              margin: getMargin(left: 16, right: 16, bottom: 40)
          )
      ),
    );
  }


  onTapArrowleftone() {
    Get.back();
  }

  onTapBack(){
    Get.back();
  }
}

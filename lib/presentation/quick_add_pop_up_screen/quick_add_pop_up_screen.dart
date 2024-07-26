import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import 'controller/quick_add_pop_up_controller.dart';

class QuickAddPopUpScreen extends GetWidget<QuickAddPopUpController> {
  const QuickAddPopUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: appTheme.whiteA700,
        body: SafeArea(
          child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                  padding: getPadding(top: 685),
                  child: SizedBox(
                      height: getVerticalSize(246),
                      width: double.maxFinite,
                      child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(
                                        left: 179,
                                        top: 15,
                                        right: 179,
                                        bottom: 15),
                                    decoration: AppDecoration.white
                                        .copyWith(
                                            borderRadius:
                                                BorderRadiusStyle
                                                    .customBorderTL32),
                                    child: Divider(
                                        color: appTheme.gray200))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding:
                                        getPadding(left: 16, bottom: 22),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomElevatedButton(
                                              height: getVerticalSize(28),
                                              width:
                                                  getHorizontalSize(116),
                                              text: "lbl_glucose".tr,
                                              leftIcon: Container(
                                                  margin: getMargin(
                                                      right: 20),
                                                  child: CustomImageView(
                                                      svgPath:
                                                          ImageConstant
                                                              .imgBlood)),
                                              buttonStyle:
                                                  CustomButtonStyles.none,
                                              buttonTextStyle:
                                                  CustomTextStyles
                                                      .titleMediumBluegray900,
                                              onTap: () {
                                                onTapGlucose();
                                              }),
                                          CustomElevatedButton(
                                              height: getVerticalSize(28),
                                              width:
                                                  getHorizontalSize(102),
                                              text: "lbl_insulin".tr,
                                              margin: getMargin(top: 44),
                                              leftIcon: Container(
                                                  margin: getMargin(
                                                      right: 20),
                                                  child: CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgInsulin)),
                                              buttonStyle:
                                                  CustomButtonStyles.none,
                                              buttonTextStyle:
                                                  CustomTextStyles
                                                      .titleMediumBluegray900,
                                              onTap: () {
                                                onTapInsulin();
                                              }),
                                          CustomElevatedButton(
                                              height: getVerticalSize(28),
                                              width:
                                                  getHorizontalSize(82),
                                              text: "lbl_pills".tr,
                                              margin: getMargin(top: 44),
                                              leftIcon: Container(
                                                  margin: getMargin(
                                                      right: 20),
                                                  child: CustomImageView(
                                                      svgPath:
                                                          ImageConstant
                                                              .imgTicket)),
                                              buttonStyle:
                                                  CustomButtonStyles.none,
                                              buttonTextStyle:
                                                  CustomTextStyles
                                                      .titleMediumBluegray900,
                                              onTap: () {
                                                onTapPills();
                                              })
                                        ])))
                          ])))),
        ));
  }


  onTapGlucose() {
    Get.toNamed(
      AppRoutes.glucoseScreen,
    );
  }
  onTapInsulin() {
    Get.toNamed(
      AppRoutes.insulinScreen,
    );
  }
  onTapPills() {
    Get.toNamed(
      AppRoutes.pillsScreen,
    );
  }
}

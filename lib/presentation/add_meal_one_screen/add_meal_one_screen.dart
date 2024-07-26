import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/app_bar/appbar_image.dart';
import 'package:diabetes_control_app/widgets/app_bar/appbar_title.dart';
import 'package:diabetes_control_app/widgets/app_bar/custom_app_bar.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/add_meal_one_controller.dart';

class AddMealOneScreen extends GetWidget<AddMealOneController> {
  const AddMealOneScreen({Key? key}) : super(key: key);

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
                          padding: getPadding(top: 21, bottom: 21),
                          decoration: AppDecoration.outlineGray,
                          child: CustomAppBar(
                              leadingWidth: getHorizontalSize(42),
                              leading: AppbarImage(
                                  svgPath: ImageConstant.imgArrowleft,
                                  margin:
                                      getMargin(left: 18, top: 5, bottom: 4),
                                  onTap: () {
                                    onTapArrowleftone();
                                  }),
                              centerTitle: true,
                              title: AppbarTitle(text: "lbl_add_meal".tr))),
                      Container(
                          padding: getPadding(
                              left: 16, top: 26, right: 16, bottom: 26),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(383),
                                    margin: getMargin(right: 14),
                                    child: Text("msg_if_you_are_not_sure".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.bodyLarge)),
                                CustomTextFormField(
                                    controller:
                                        controller.drinknameoneController,
                                    margin: getMargin(top: 23),
                                    hintText: "lbl_lime_soda".tr,
                                    textInputAction: TextInputAction.done,
                                    contentPadding: getPadding(
                                        left: 16,
                                        top: 20,
                                        right: 16,
                                        bottom: 20),
                                    borderDecoration:
                                        TextFormFieldStyleHelper.fillGray),
                                Container(
                                    margin: getMargin(top: 16),
                                    padding: getPadding(
                                        left: 16,
                                        top: 19,
                                        right: 16,
                                        bottom: 19),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_5_02".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          Text("lbl_gl".tr,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                Container(
                                    margin: getMargin(top: 16),
                                    padding: getPadding(
                                        left: 16,
                                        top: 19,
                                        right: 16,
                                        bottom: 19),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Padding(
                                              padding: getPadding(bottom: 1),
                                              child: Text("lbl_20".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          Text("lbl_g".tr,
                                              style: theme.textTheme.bodyLarge)
                                        ])),
                                Container(
                                    width: getHorizontalSize(396),
                                    margin: getMargin(top: 16, bottom: 5),
                                    padding: getPadding(all: 16),
                                    decoration: AppDecoration.fillGray.copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder12),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding: getPadding(top: 3),
                                              child: Text(
                                                  "lbl_add_dish_photos".tr,
                                                  style: theme
                                                      .textTheme.bodyLarge)),
                                          Padding(
                                              padding: getPadding(top: 17),
                                              child: Row(children: [
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(top: 1),
                                                    color: appTheme.gray50,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            140),
                                                        width:
                                                            getHorizontalSize(
                                                                122),
                                                        decoration: AppDecoration
                                                            .fillGray
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle4390,
                                                                  height:
                                                                      getVerticalSize(
                                                                          140),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          122),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              12)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowright,
                                                                  height:
                                                                      getSize(
                                                                          20),
                                                                  width:
                                                                      getSize(
                                                                          20),
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              8,
                                                                          right:
                                                                              8))
                                                            ]))),
                                                Card(
                                                    clipBehavior:
                                                        Clip.antiAlias,
                                                    elevation: 0,
                                                    margin: getMargin(left: 16),
                                                    color: appTheme.gray50,
                                                    shape: RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder12),
                                                    child: Container(
                                                        height: getVerticalSize(
                                                            140),
                                                        width:
                                                            getHorizontalSize(
                                                                122),
                                                        decoration: AppDecoration
                                                            .fillGray
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder12),
                                                        child: Stack(
                                                            alignment: Alignment
                                                                .topRight,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgRectangle4390140x122,
                                                                  height:
                                                                      getVerticalSize(
                                                                          140),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          122),
                                                                  radius: BorderRadius
                                                                      .circular(
                                                                          getHorizontalSize(
                                                                              12)),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgArrowright,
                                                                  height:
                                                                      getSize(
                                                                          20),
                                                                  width:
                                                                      getSize(
                                                                          20),
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  margin:
                                                                      getMargin(
                                                                          top:
                                                                              8,
                                                                          right:
                                                                              8))
                                                            ])))
                                              ]))
                                        ]))
                              ]))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_save".tr,
                margin: getMargin(left: 16, right: 16, bottom: 40))));
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] library to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }
}

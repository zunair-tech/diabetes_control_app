import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/target_glucose_range_controller.dart';

class TargetGlucoseRangeScreen extends GetWidget<TargetGlucoseRangeController> {
  const TargetGlucoseRangeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AppBarText(
                  backIcon: true,
                  text: 'Target Glucose range',
                  click: () => Get.back(),
                ),
                Divider(
                  color: appTheme.gray90014,
                  thickness: getSize(1.5),
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: getMargin(top: 40,left: 16,right: 16,bottom: 16),
                          padding: getPadding(all: 16),

                          decoration: AppDecoration.outlineBlack
                              .copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Text(
                                    "msg_glucose_before_meal".tr,
                                    style: CustomTextStyles
                                        .titleMediumBluegray900),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(bottom: 6),
                                            child: Text("lbl_lowest_value".tr,
                                                style: theme.textTheme
                                                    .bodyLarge),
                                          ),
                                          CustomTextFormField(
                                            autofocus: false,
                                              controller: controller
                                                  .mgdlCounterController,
                                              textInputType: TextInputType.number,
                                              textInputAction: TextInputAction.done,
                                              margin:
                                                  getMargin(top: 6),
                                              hintText:
                                                  "value".tr,
                                              fillColor:
                                                  appTheme.white)
                                        ]
                                    )
                                ),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(bottom: 6),
                                            child: Text("lbl_highest_value".tr,
                                                style: theme.textTheme
                                                    .bodyLarge),
                                          ),
                                          CustomTextFormField(
                                            autofocus: false,
                                              controller: controller
                                                  .mgdlCounterController1,
                                              textInputAction: TextInputAction.done,
                                              textInputType: TextInputType.number,
                                              margin:
                                                  getMargin(top: 5),
                                              hintText:
                                                  "value".tr)
                                        ]
                                    )
                                )
                              ]
                          )
                      ),
                      Container(
                          margin: getMargin( left: 16,right: 16,bottom: 16),
                          padding: getPadding(all: 16),
                          decoration: AppDecoration.outlineBlack
                              .copyWith(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              mainAxisAlignment:
                                  MainAxisAlignment.center,
                              children: [
                                Text(
                                    "msg_glucose_after_meal".tr,
                                    style: CustomTextStyles
                                        .titleMediumBluegray900),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(bottom: 6),
                                            child: Text("lbl_lowest_value".tr,
                                                style: theme.textTheme
                                                    .bodyLarge),
                                          ),
                                          CustomTextFormField(
                                            autofocus: false,
                                              controller: controller
                                                  .mgdlCounterController2,
                                              textInputType: TextInputType.number,
                                              textInputAction: TextInputAction.done,
                                              margin:
                                                  getMargin(top: 6),
                                              hintText:
                                                  "value".tr)
                                        ])),
                                Padding(
                                    padding: getPadding(top: 16),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: getPadding(bottom: 16),
                                            child: Text("lbl_highest_value".tr,
                                                style: theme.textTheme
                                                    .bodyLarge),
                                          ),
                                          CustomTextFormField(
                                            autofocus: false,
                                              controller: controller
                                                  .mgdlCounterController3,
                                              textInputType: TextInputType.number,
                                              textInputAction: TextInputAction.done,
                                              margin:
                                                  getMargin(top: 5),
                                              hintText:
                                                  "value".tr,
                                             )
                                        ]
                                    )
                                )
                              ]
                          )
                      )
                    ]
                )
              ]
          ),
        ),
        bottomNavigationBar: GetBuilder<TargetGlucoseRangeController>(builder: (controller) {
          return controller.allSelect?GestureDetector(
            onTap:() {

              onTapArrowleftone();
            } ,
            child: Padding(
              padding: getPadding(bottom: 40,left: 16,right: 16),
              child: Container(
                height: getSize(54),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Color(0xFF62B47F),
                    borderRadius: BorderRadius.circular(getHorizontalSize(12))
                ),
                child: Padding(
                  padding: getPadding(top: 13,bottom: 13),
                  child: Text('Save',style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: getFontSize(18)
                  ),),
                ),
              ),
            ),
          ): Padding(
            padding: getPadding(bottom: 40,left: 16,right: 16),
            child: Container(
              height: getSize(54),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Color(0xFFE7E7E7),
                  borderRadius: BorderRadius.circular(getHorizontalSize(12))
              ),
              child: Padding(
                padding: getPadding(top: 13,bottom: 13),
                child: Text('Save',style: TextStyle(
                    color: Color(0xFF7C7C7C),
                    fontWeight: FontWeight.w700,
                    fontSize: getFontSize(18)
                ),),
              ),
            ),
          );
        },init: TargetGlucoseRangeController(),)
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}

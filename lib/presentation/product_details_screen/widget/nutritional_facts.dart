import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

class NutritionalFacts extends StatelessWidget {
  const NutritionalFacts({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: getMargin(left: 16, right: 16),
        padding: getPadding(all: 16),
        decoration: AppDecoration.outlineBlack
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: getPadding(top: 2),
                  child: Text("msg_nutritional_facts".tr,
                      style: CustomTextStyles.titleMediumBluegray900)),
              Padding(
                  padding: getPadding(top: 20),
                  child: Row(children: [
                    Text("lbl_carbs".tr, style: theme.textTheme.bodyLarge),
                    Expanded(
                      child: Padding(
                          padding: getPadding(left: 8, top: 2),
                          child: Text("lbl_20_0_g".tr,
                              style:
                                  CustomTextStyles.bodyMediumSFProDisplay_1)),
                    ),
                    Text("lbl_25".tr,
                        style: CustomTextStyles.bodyMediumSFProDisplay_1)
                  ])),
              Padding(
                padding: getPadding(top: 10),
                child: Container(
                  height: getSize(5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: appTheme.gray50,
                      borderRadius:
                          BorderRadius.circular(getHorizontalSize(2))),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(getHorizontalSize(2)),
                    child: LinearProgressIndicator(
                      value: 0.48,
                      backgroundColor: appTheme.gray50,
                      valueColor: AlwaysStoppedAnimation<Color>(
                          theme.colorScheme.primary),
                    ),
                  ),
                ),
              ),
              Padding(
                  padding: getPadding(top: 18),
                  child: Row(children: [
                    Text("lbl_glucose".tr, style: theme.textTheme.bodyLarge),
                    Expanded(
                      child: Padding(
                          padding: getPadding(left: 8, top: 2),
                          child: Text("lbl_10_0_gl".tr,
                              style:
                                  CustomTextStyles.bodyMediumSFProDisplay_1),),
                    ),
                    Text("lbl_25".tr,
                        style: CustomTextStyles.bodyMediumSFProDisplay_1)
                  ],),),
              Padding(
                  padding: getPadding(top: 10),
                  child: Container(
                      height: getSize(5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: appTheme.gray50,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(2))),
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(2)),
                          child: LinearProgressIndicator(
                              value: 0.35,
                              backgroundColor: appTheme.gray50,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.primary))))),
              Padding(
                  padding: getPadding(top: 18),
                  child: Row(children: [
                    Text("lbl_protien".tr, style: theme.textTheme.bodyLarge),
                    Expanded(
                      child: Padding(
                          padding: getPadding(left: 8, top: 2),
                          child: Text("lbl_40_0_g".tr,
                              style:
                                  CustomTextStyles.bodyMediumSFProDisplay_1)),
                    ),
                    Text("lbl_70".tr,
                        style: CustomTextStyles.bodyMediumSFProDisplay_1)
                  ])),
              Padding(
                  padding: getPadding(top: 10),
                  child: Container(
                      height: getSize(5),
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: appTheme.gray50,
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(2))),
                      child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(getHorizontalSize(2)),
                          child: LinearProgressIndicator(
                              value: 0.74,
                              backgroundColor: appTheme.gray50,
                              valueColor: AlwaysStoppedAnimation<Color>(
                                  theme.colorScheme.primary)))))
            ]));
  }
}

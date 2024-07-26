import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/app_bar/appbar_image.dart';
import 'package:diabetes_control_app/widgets/app_bar/appbar_title.dart';
import 'package:diabetes_control_app/widgets/app_bar/custom_app_bar.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../insulin_with_dropdown_screen/widgets/chipviewbefore4_item_widget.dart';
import 'controller/insulin_with_dropdown_controller.dart';
import 'models/chipviewbefore4_item_model.dart';

class InsulinWithDropdownScreen
    extends GetWidget<InsulinWithDropdownController> {
  const InsulinWithDropdownScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                    padding: getPadding(top: 22, bottom: 22),
                    decoration: AppDecoration.outlineGray,
                    child: CustomAppBar(
                        leadingWidth: getHorizontalSize(42),
                        leading: AppbarImage(
                            svgPath: ImageConstant.imgArrowleft,
                            margin:
                                getMargin(left: 18, top: 6, bottom: 3),
                            onTap: () {
                              onTapArrowleftone();
                            }),
                        centerTitle: true,
                        title: AppbarTitle(text: "lbl_insulin".tr))),
                Container(
                    padding: getPadding(
                        left: 16, top: 28, right: 16, bottom: 28),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                              onTap: () {
                                onTapDetails();
                              },
                              child: Container(
                                  padding: getPadding(
                                      left: 16,
                                      top: 18,
                                      right: 16,
                                      bottom: 18),
                                  decoration: AppDecoration.fillGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding: getPadding(
                                                top: 1, bottom: 2),
                                            child: Obx(() => Text(
                                                controller
                                                    .insulinWithDropdownModelObj
                                                    .value
                                                    .yourgenderTxt
                                                    .value,
                                                style: theme.textTheme
                                                    .bodyLarge))),
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgCalendar,
                                            height: getSize(24),
                                            width: getSize(24))
                                      ]))),
                          Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: getMargin(top: 16),
                              color: appTheme.gray50,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusStyle
                                      .roundedBorder12),
                              child: Container(
                                  height: getVerticalSize(154),
                                  width: getHorizontalSize(396),
                                  padding: getPadding(
                                      left: 9,
                                      top: 16,
                                      right: 9,
                                      bottom: 16),
                                  decoration: AppDecoration.fillGray
                                      .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder12),
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment:
                                                Alignment.topCenter,
                                            child: Padding(
                                                padding:
                                                    getPadding(top: 3),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text(
                                                          "lbl_insulin_amount"
                                                              .tr,
                                                          style: theme
                                                              .textTheme
                                                              .titleLarge),
                                                      Padding(
                                                          padding:
                                                              getPadding(
                                                                  top: 2),
                                                          child: Text(
                                                              "lbl_mg_dl"
                                                                  .tr,
                                                              style: CustomTextStyles
                                                                  .titleMediumBluegray900)),
                                                      CustomImageView(
                                                          svgPath:
                                                              ImageConstant
                                                                  .imgArrowup,
                                                          height:
                                                              getSize(24),
                                                          width:
                                                              getSize(24),
                                                          margin:
                                                              getMargin(
                                                                  left:
                                                                      4))
                                                    ]))),
                                        Align(
                                            alignment:
                                                Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 9, right: 9),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    children: [
                                                      Padding(
                                                          padding:
                                                              getPadding(
                                                                  left:
                                                                      41),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            17,
                                                                        bottom:
                                                                            14),
                                                                    child: Text(
                                                                        "lbl_104".tr,
                                                                        style: CustomTextStyles.bodyMediumSFProDisplayBluegray100)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            32,
                                                                        top:
                                                                            17,
                                                                        bottom:
                                                                            14),
                                                                    child: Text(
                                                                        "lbl_105".tr,
                                                                        style: CustomTextStyles.bodyMediumSFProDisplay)),
                                                                Container(
                                                                    height: getVerticalSize(
                                                                        48),
                                                                    width: getHorizontalSize(
                                                                        60),
                                                                    margin: getMargin(
                                                                        left:
                                                                            32),
                                                                    child: Stack(
                                                                        alignment: Alignment.bottomLeft,
                                                                        children: [
                                                                          Align(alignment: Alignment.topCenter, child: Text("lbl_106".tr, style: theme.textTheme.displaySmall)),
                                                                          CustomImageView(svgPath: ImageConstant.imgVector7, height: getVerticalSize(6), width: getHorizontalSize(13), alignment: Alignment.bottomLeft, margin: getMargin(left: 22))
                                                                        ])),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            33,
                                                                        top:
                                                                            17,
                                                                        bottom:
                                                                            14),
                                                                    child: Text(
                                                                        "lbl_107".tr,
                                                                        style: CustomTextStyles.bodyMediumSFProDisplay)),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        left:
                                                                            32,
                                                                        top:
                                                                            17,
                                                                        bottom:
                                                                            14),
                                                                    child: Text(
                                                                        "lbl_108".tr,
                                                                        style: CustomTextStyles.bodyMediumSFProDisplayBluegray100))
                                                              ])),
                                                      CustomImageView(
                                                          svgPath:
                                                              ImageConstant
                                                                  .imgFrame34226,
                                                          height:
                                                              getVerticalSize(
                                                                  23),
                                                          width:
                                                              getHorizontalSize(
                                                                  360))
                                                    ]))),
                                        Align(
                                            alignment:
                                                Alignment.bottomRight,
                                            child: Padding(
                                                padding: getPadding(
                                                    bottom: 14),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .end,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath:
                                                              ImageConstant
                                                                  .imgPolygon1,
                                                          height:
                                                              getVerticalSize(
                                                                  7),
                                                          width:
                                                              getHorizontalSize(
                                                                  12),
                                                          margin:
                                                              getMargin(
                                                                  right:
                                                                      14)),
                                                      Container(
                                                          padding:
                                                              getPadding(
                                                                  left:
                                                                      28,
                                                                  top: 8,
                                                                  right:
                                                                      28,
                                                                  bottom:
                                                                      8),
                                                          decoration: AppDecoration
                                                              .outlineBlack900
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder3),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                            3),
                                                                    child: Text(
                                                                        "lbl_mg_dl".tr,
                                                                        style: CustomTextStyles.bodyLargeBlack900)),
                                                                GestureDetector(
                                                                    onTap:
                                                                        () {
                                                                      onTapTxtMmolL();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(top: 19),
                                                                        child: Text("lbl_mmol_l".tr, style: CustomTextStyles.bodyLargeBlack900)))
                                                              ]))
                                                    ])))
                                      ]))),
                          Container(
                              width: getHorizontalSize(396),
                              margin: getMargin(top: 16),
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
                                    Padding(
                                        padding: getPadding(top: 3),
                                        child: Text("lbl_time_base".tr,
                                            style: theme
                                                .textTheme.titleLarge)),
                                    Padding(
                                        padding: getPadding(top: 20),
                                        child: Obx(() => Wrap(
                                            runSpacing:
                                                getVerticalSize(16),
                                            spacing:
                                                getHorizontalSize(16),
                                            children: List<
                                                    Widget>.generate(
                                                controller
                                                    .insulinWithDropdownModelObj
                                                    .value
                                                    .chipviewbefore4ItemList
                                                    .value
                                                    .length, (index) {
                                              Chipviewbefore4ItemModel
                                                  model = controller
                                                      .insulinWithDropdownModelObj
                                                      .value
                                                      .chipviewbefore4ItemList
                                                      .value[index];
                                              return Chipviewbefore4ItemWidget(
                                                  model);
                                            }))))
                                  ])),
                          CustomElevatedButton(
                              text: "lbl_save".tr,
                              margin: getMargin(top: 24, bottom: 5),
                              onTap: () {
                                onTapSave();
                              })
                        ]))
              ]),
        ));
  }


  onTapArrowleftone() {
    Get.back();
  }


  Future<void> onTapDetails() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        initialDate: controller
            .insulinWithDropdownModelObj.value.selectedYourgenderTxt!.value,
        firstDate: DateTime(2970),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.insulinWithDropdownModelObj.value.selectedYourgenderTxt!
          .value = dateTime;
      controller.insulinWithDropdownModelObj.value.yourgenderTxt.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }


  onTapTxtMmolL() {
    Get.toNamed(
      AppRoutes.insulinChangeMeasureScreen,
    );
  }
  onTapSave() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }
}

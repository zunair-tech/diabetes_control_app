import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/core/utils/validation_functions.dart';
import 'package:diabetes_control_app/presentation/home_page/controller/home_controller.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/pills_controller.dart';

// ignore_for_file: must_be_immutable
class PillsScreen extends GetWidget<PillsController> {
  PillsScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Form(
              key: _formKey,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                AppBarText(
                  text: 'Pills',
                  backIcon: true,
                  click: () => Get.back(),
                ),
                Divider(
                  color: appTheme.gray90014,
                  thickness: getSize(1.5),
                ),
                Padding(
                  padding: getPadding(left: 16, right: 16, top: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapDetails();
                            },
                            child: Container(
                                padding: getPadding(
                                    left: 16, top: 18, right: 16, bottom: 18),
                                decoration: AppDecoration.fillGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder12),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                          padding:
                                              getPadding(top: 1, bottom: 2),
                                          child: Obx(() => Text(
                                              controller
                                                      .pillsModelObj
                                                      .value
                                                      .yourgenderTxt
                                                      .value
                                                      .isEmpty
                                                  ? 'Select Date'
                                                  : controller
                                                      .pillsModelObj
                                                      .value
                                                      .yourgenderTxt
                                                      .value,
                                              style:
                                                  theme.textTheme.bodyLarge))),
                                      CustomImageView(
                                          svgPath: ImageConstant.imgCalendar,
                                          height: getSize(24),
                                          width: getSize(24))
                                    ]))),
                        Container(
                            margin: getMargin(top: 16),
                            padding: getPadding(all: 16),
                            decoration: AppDecoration.fillGray.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(bottom: 16),
                                      child: Text("lbl_pill_name".tr,
                                          style: theme.textTheme.titleLarge)),
                                  GestureDetector(
                                    onTap: () {
                                      Get.toNamed(AppRoutes.searchOneScreen);
                                    },
                                    child: CustomTextFormField(
                                        enabled: false,
                                        autofocus: false,
                                        controller: controller.nameController,
                                        margin: getMargin(top: 20),
                                        hintText:
                                            controller.medicineName.isEmpty
                                                ? "lbl_medicine_name".tr
                                                : controller.medicineName,
                                        hintStyle:
                                            CustomTextStyles.bodyLargeGray600_1,
                                        textInputAction: TextInputAction.done,
                                        suffix: Container(
                                            margin: getMargin(
                                                left: 30,
                                                top: 18,
                                                right: 16,
                                                bottom: 18),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgSearch)),
                                        suffixConstraints: BoxConstraints(
                                            maxHeight: getVerticalSize(60)),
                                        validator: (value) {
                                          if (!isText(value)) {
                                            return "Please enter valid text";
                                          }
                                          return null;
                                        },
                                        contentPadding: getPadding(
                                            left: 14, top: 20, bottom: 20),
                                        borderDecoration:
                                            TextFormFieldStyleHelper.fillWhiteA,
                                        fillColor: appTheme.whiteA700),
                                  )
                                ])),
                        Container(
                            margin: getMargin(top: 16),
                            padding: getPadding(all: 16),
                            decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.roundedBorder12),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 3),
                                      child: Text("lbl_medicine_count".tr,
                                          style: theme.textTheme.titleLarge)),
                                  GetBuilder<PillsController>(
                                    builder: (controller) {
                                      return Container(
                                          margin: getMargin(top: 20),
                                          padding: getPadding(
                                              left: 16,
                                              top: 10,
                                              right: 16,
                                              bottom: 10),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    if (homeController
                                                            .pillCount >
                                                        0) {
                                                      homeController.pillCount =
                                                          homeController
                                                                  .pillCount -
                                                              1;
                                                      homeController.update();
                                                      controller.update();
                                                    }
                                                  },
                                                  child: Container(
                                                      height: getSize(40),
                                                      width: getSize(40),
                                                      padding: getPadding(
                                                          left: 7,
                                                          top: 8,
                                                          right: 7,
                                                          bottom: 8),
                                                      decoration: AppDecoration
                                                          .fillBlueGray
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder20),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgMenu,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          alignment: Alignment
                                                              .centerLeft)),
                                                ),
                                                Expanded(
                                                  child: Text(
                                                      "${homeController.pillCount} Pill"
                                                          .tr,
                                                      style: CustomTextStyles
                                                          .titleMediumBluegray900,
                                                      textAlign:
                                                          TextAlign.center),
                                                ),
                                                GestureDetector(
                                                  onTap: () {
                                                    if (homeController
                                                            .pillCount <
                                                        9) {
                                                      homeController.pillCount =
                                                          homeController
                                                                  .pillCount +
                                                              1;
                                                      homeController.update();
                                                      controller.update();

                                                      print(
                                                          'Count===> ${homeController.pillCount}');
                                                    }
                                                  },
                                                  child: Container(
                                                      height: getSize(40),
                                                      width: getSize(40),
                                                      padding:
                                                          getPadding(all: 8),
                                                      decoration: AppDecoration
                                                          .fillPrimary
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder20),
                                                      child: CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPlusWhiteA700,
                                                          height: getSize(24),
                                                          width: getSize(24),
                                                          alignment: Alignment
                                                              .center)),
                                                )
                                              ]));
                                    },
                                    init: PillsController(),
                                  )
                                ])),
                        CustomElevatedButton(
                            text: "lbl_save".tr,
                            margin: getMargin(top: 24, bottom: 5),
                            onTap: () {
                              onTapSave();
                            })
                      ]),
                )
              ])),
        ));
  }

  onTapArrowleftone() {
    Get.back();
  }

  Future<void> onTapDetails() async {
    DateTime? dateTime = await showDatePicker(
        context: Get.context!,
        builder: (context, child) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                  primary: Color(0xFF62B47F), // <-- SEE HERE
                  onPrimary: Colors.black, // <-- SEE HERE
                  onSurface: Colors.black //// <-- SEE HERE

                  ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  iconColor: Colors.red,
                  // button text color
                ),
              ),
              unselectedWidgetColor: appTheme.greenA700,
            ),
            child: child!,
          );
        },
        initialDate:
            controller.pillsModelObj.value.selectedYourgenderTxt!.value,
        firstDate: DateTime(2020),
        lastDate: DateTime(
            DateTime.now().year, DateTime.now().month, DateTime.now().day));
    if (dateTime != null) {
      controller.pillsModelObj.value.selectedYourgenderTxt!.value = dateTime;
      controller.pillsModelObj.value.yourgenderTxt.value =
          dateTime.format(dateTimeFormatPattern);
    }
  }

  /// Navigates to the homePageContainerScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the homePageContainerScreen.
  onTapSave() {
    Get.toNamed(
      AppRoutes.homePageContainerScreen,
    );
  }
}

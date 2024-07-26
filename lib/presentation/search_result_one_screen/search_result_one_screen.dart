import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/search_result_one_controller.dart';

class SearchResultOneScreen extends GetWidget<SearchResultOneController> {
  const SearchResultOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 24, bottom: 24),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          controller: controller.itemnameoneController,
                          margin: getMargin(left: 16, right: 16),
                          hintText: "lbl_banana_fresh".tr,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 17, top: 15, right: 13, bottom: 15),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgSearch)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(54)),
                          contentPadding:
                              getPadding(top: 17, right: 30, bottom: 17),
                          borderDecoration:
                              TextFormFieldStyleHelper.fillGrayTL16),
                      GestureDetector(
                          onTap: () {
                            onTapMealitem();
                          },
                          child: Container(
                              width: double.maxFinite,
                              margin: getMargin(top: 16, bottom: 5),
                              padding: getPadding(
                                  left: 16, top: 14, right: 16, bottom: 14),
                              decoration: AppDecoration.outlineGray200,
                              child: Row(children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle439248x48,
                                    height: getSize(48),
                                    width: getSize(48),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(8)),
                                    margin: getMargin(top: 1)),
                                Padding(
                                    padding: getPadding(left: 16, top: 4),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("lbl_banana_fresh".tr,
                                              style: theme.textTheme.bodyLarge),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("lbl_3_6_gl".tr,
                                                  style: CustomTextStyles
                                                      .bodyMediumSFProDisplay_1))
                                        ]))
                              ])))
                    ]))));
  }

  /// Navigates to the productDetailsScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the productDetailsScreen.
  onTapMealitem() {
    Get.toNamed(
      AppRoutes.productDetailsScreen,
    );
  }
}

import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/app_bar/appbar_title.dart';
import 'package:diabetes_control_app/widgets/app_bar/custom_app_bar.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../basic_details_one_screen/widgets/userdetails_item_widget.dart';
import 'controller/basic_details_one_controller.dart';
import 'models/userdetails_item_model.dart';

class BasicDetailsOneScreen extends GetWidget<BasicDetailsOneController> {
  const BasicDetailsOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.white,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 22, bottom: 22),
                          decoration: AppDecoration.outlineGray,
                          child: CustomAppBar(
                              centerTitle: true,
                              title:
                                  AppbarTitle(text: "lbl_basic_details".tr))),
                      Expanded(
                          child: SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  padding: getPadding(
                                      left: 16, top: 30, right: 16, bottom: 30),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(top: 5),
                                            child: Text(
                                                "msg_tell_us_about_yourself".tr,
                                                style: theme
                                                    .textTheme.headlineSmall)),
                                        Container(
                                            width: getHorizontalSize(359),
                                            margin:
                                                getMargin(top: 11, right: 38),
                                            child: Text(
                                                "msg_your_individual".tr,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                style:
                                                    theme.textTheme.bodyLarge)),
                                        Expanded(
                                            child: Padding(
                                                padding: getPadding(top: 30),
                                                child: Obx(() =>
                                                    ListView.separated(
                                                        physics:
                                                            BouncingScrollPhysics(),
                                                        shrinkWrap: true,
                                                        separatorBuilder:
                                                            (context, index) {
                                                          return SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      16));
                                                        },
                                                        itemCount: controller
                                                            .basicDetailsOneModelObj
                                                            .value
                                                            .userdetailsItemList
                                                            .value
                                                            .length,
                                                        itemBuilder:
                                                            (context, index) {
                                                          UserdetailsItemModel
                                                              model = controller
                                                                  .basicDetailsOneModelObj
                                                                  .value
                                                                  .userdetailsItemList
                                                                  .value[index];
                                                          return UserdetailsItemWidget(
                                                              model);
                                                        }))))
                                      ]))))
                    ])),
            bottomNavigationBar: CustomElevatedButton(
                text: "lbl_confirm_details".tr,
                margin: getMargin(left: 16, right: 16, bottom: 40),
                onTap: () {
                  onTapConfirmdetails();
                })));
  }

  /// Navigates to the detailsUploadSuccessScreen when the action is triggered.

  /// When the action is triggered, this function uses the `Get` package to
  /// push the named route for the detailsUploadSuccessScreen.
  onTapConfirmdetails() {
    Get.toNamed(
      AppRoutes.detailsUploadSuccessScreen,
    );
  }
}

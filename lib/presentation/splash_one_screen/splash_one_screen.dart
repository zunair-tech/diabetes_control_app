import 'controller/splash_one_controller.dart';
import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class SplashOneScreen extends GetWidget<SplashOneController> {
  const SplashOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrameRedA200,
                height: getVerticalSize(100),
                width: getHorizontalSize(75),
              ),
              Padding(
                padding: getPadding(
                  top: 26,
                  bottom: 5,
                ),
                child: Text(
                  "msg_diabetes_control".tr,
                  style: CustomTextStyles.displaySmallBold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

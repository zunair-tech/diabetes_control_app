import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'controller/splash_controller.dart';

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Scaffold(
        backgroundColor: theme.colorScheme.primary,
        appBar: getAppBar(text: "",toolbarHeight: 0,),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgFrame,
                      height: getSize(100),
                      width: getSize(75)),
                  Padding(
                      padding: getPadding(top: 26, bottom: 5),
                      child: Text("msg_diabetes_control".tr,
                          style: CustomTextStyles.displaySmallWhiteA700))
                ]
            )
        )
    );
  }

  static  getAppBar({
    SystemUiOverlayStyle? systemUiOverlayStyle,
    String? text,
    Color?color,
    double?toolbarHeight,
    List<Widget>?action,
    void Function()? onTap,
    bool leadingIcon=false,
  }){
    return  AppBar(
      title: Text(
        text!,
        style: TextStyle(
          fontSize: getFontSize(28),
          color: appTheme.black900,
          fontWeight: FontWeight.w700,
          // fontSize: 22.sp,
          // fontWeight:FontWeight.w700,

        ),
      ),
      systemOverlayStyle: SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: Colors.transparent,
      ),

      actions: action,
      leading: leadingIcon?Center(
        child: GestureDetector(
          onTap: () {
            onTap!();
            // CommonPop.popScreen(context, RoutesPath.loginScreen);
          },
          // child: Image.asset(
          //   // AppImages.backArrow,height: 24.h,width: 24.h,
          // ),
        ),
      ):const SizedBox(),
      centerTitle: true,

      toolbarHeight: toolbarHeight??40,
      elevation: 0,
      scrolledUnderElevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: color??Colors.transparent,
    );
  }
}

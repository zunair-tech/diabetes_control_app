import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import '../../data/store_data/pref_data.dart';
import 'controller/details_upload_success_controller.dart';

class DetailsUploadSuccessScreen
    extends GetWidget<DetailsUploadSuccessController> {
  const DetailsUploadSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () {
        return onTapGotologin();
      },
      child: Scaffold(
          backgroundColor: appTheme.white,
          body: Container(
              width: double.maxFinite,
              padding: getPadding(left: 48, right: 48),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImageView(
                        svgPath: ImageConstant.imgGroup34160,
                        color: Color(0xFF62B47F),
                        height: getSize(154),
                        width: getSize(154)),
                    Padding(
                        padding: getPadding(top: 35),
                        child: Text("msg_details_has_been".tr,
                            style: theme.textTheme.titleLarge)),
                    Container(
                        width: getHorizontalSize(332),
                        margin: getMargin(top: 13),
                        child: Text("msg_you_have_successfully".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyLarge)),
                    CustomElevatedButton(
                        text: "lbl_go_to_log_in".tr,
                        margin: getMargin(
                            left: 41, top: 21, right: 39, bottom: 5),
                        onTap: () {
                          onTapGotologin();
                        })
                  ]
              )
          )
      ),
    );
  }

 
  onTapGotologin() {
    PrefData.setIntro(false);
    Get.toNamed(
      AppRoutes.logInScreen,
    );
  }
}

import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/presentation/profile_details_screen/widget/details_container.dart';
import 'package:flutter/material.dart';


import 'controller/profile_details_controller.dart';

// ignore_for_file: must_be_immutable
class ProfileDetailsScreen extends GetWidget<ProfileDetailsController> {
  ProfileDetailsScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Form(
              key: _formKey,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    AppBarText(
                      text: 'Profile details',
                      backIcon: true,
                      click: () => Get.back(),
                      action: GestureDetector(
                        onTap: () {
                          onTapEditone();
                        },
                        child: CustomImageView(
                          svgPath: ImageConstant.imgEdit,
                          height: getSize(24),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: getSize(1.5),
                      color: appTheme.gray90014,
                    ),
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: getPadding(top: 40,bottom: 40),
                            child: CustomImageView(
                                svgPath: ImageConstant.imgAvtar1,
                                height: getSize(104),
                                width: getSize(104)),
                          ),
                          DetailsContainer(
                            title: 'Name',
                            data: 'Cliff',
                          ),
                          DetailsContainer(
                            title: 'Email address',
                            data: 'cliffchong1@gmail.com',
                          ),
                          DetailsContainer(
                            title: 'Phone number',
                            data: '012-3456789',
                          ),

                        ]
                    ),
                  ]
              )
          ),
        )
    );
  }


  onTapArrowleftone() {
    Get.back();
  }

  onTapEditone() {
    Get.toNamed(
      AppRoutes.editProfileScreen,
    );
  }
}

import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

import '../basic_details_screen/controller/basic_details_controller.dart';
import '../basic_details_screen/widgets/select_data_container.dart';
import 'controller/health_info_controller.dart';

class HealthInfoScreen extends GetWidget<HealthInfoController> {
  const HealthInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            AppBarText(
              text: 'Health info',
              backIcon: true,
              click: () => Get.back(),
            ),
            Divider(
              thickness: getSize(1.5),
              color: appTheme.gray90014,
            ),
            Padding(
              padding: getPadding(all: 16),
              child: Text('Your individual parameters are important for Dia'
                  ' for in-depth personalization.',style: TextStyle(
                color: appTheme.black900,
                fontSize: getFontSize(16),
                fontWeight: FontWeight.w400,
              ),),
            ),
            Expanded(
              child: GetBuilder<BasicDetailsController>(
                builder: (controller) {
                  return ListView(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.genderScreen);
                        },
                        child: SelectDataContainer(
                          text: 'Your gender',
                          showData: controller.gender.isEmpty
                              ? Text(
                            'Male',
                            style: TextStyle(
                              color: appTheme.black900,
                              fontWeight: FontWeight.w400,
                              fontSize: getFontSize(16),
                            ),
                          )
                              : Text(
                                  controller.gender,
                                  style: TextStyle(
                                    color: appTheme.black900,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getFontSize(16),
                                  ),
                                ),
                        ),
                      ),
                      SelectDataContainer(
                        text: 'Your weight',
                        showData: Text(
                          '80 kg',
                          style: TextStyle(
                            color: appTheme.black900,
                            fontWeight: FontWeight.w400,
                            fontSize: getFontSize(16),
                          ),
                        ),
                      ),
                      SelectDataContainer(
                        text: 'Your age',
                        showData: Text(
                          '55 years',
                          style: TextStyle(
                            color: appTheme.black900,
                            fontWeight: FontWeight.w400,
                            fontSize: getFontSize(16),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.diabetesTypeScreen);
                        },
                        child: SelectDataContainer(
                          text: 'Your diabetes type',
                          showData: controller.diabetesType.isEmpty
                              ? Text(
                            'Type 2',
                            style: TextStyle(
                              color: appTheme.black900,
                              fontWeight: FontWeight.w400,
                              fontSize: getFontSize(16),
                            ),
                          )
                              : Text(
                                  controller.diabetesType,
                                  style: TextStyle(
                                    color: appTheme.black900,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getFontSize(16),
                                  ),
                                ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.therapyTypeScreen);
                        },
                        child: SelectDataContainer(
                          text: 'Your therapy',
                          showData: controller.therapy.isEmpty
                              ? Text(
                            'insulin',
                            style: TextStyle(
                              color: appTheme.black900,
                              fontWeight: FontWeight.w400,
                              fontSize: getFontSize(16),
                            ),
                          )
                              : Text(
                                  controller.therapy,
                                  style: TextStyle(
                                    color: appTheme.black900,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getFontSize(16),
                                  ),
                                ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.measurementUnitTypeScreen);
                        },
                        child: SelectDataContainer(
                          text: 'Your measurement unit',
                          showData: controller.measurementUnit.isEmpty
                              ?Text(
                            'mg/ dl',
                            style: TextStyle(
                              color: appTheme.black900,
                              fontWeight: FontWeight.w400,
                              fontSize: getFontSize(16),
                            ),
                          )
                              : Text(
                                  controller.measurementUnit,
                                  style: TextStyle(
                                    color: appTheme.black900,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getFontSize(16),
                                  ),
                                ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.sugarGoalsScreen);
                        },
                        child: SelectDataContainer(
                          text: 'Your sugar goal',
                          showData: controller.sugar.isEmpty
                              ? Text(
                            '50 mg/ dl',
                            style: TextStyle(
                              color: appTheme.black900,
                              fontWeight: FontWeight.w400,
                              fontSize: getFontSize(16),
                            ),
                          )
                              : Text(
                                  controller.sugar,
                                  style: TextStyle(
                                    color: appTheme.black900,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getFontSize(16),
                                  ),
                                ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoutes.glucoseLevelScreen);
                        },
                        child: SelectDataContainer(
                          text: 'Your glucose level',
                          showData: controller.glucose.isEmpty
                              ? Text(
                            '80 mg/ dl',
                            style: TextStyle(
                              color: appTheme.black900,
                              fontWeight: FontWeight.w400,
                              fontSize: getFontSize(16),
                            ),
                          )
                              : Text(
                                  controller.glucose,
                                  style: TextStyle(
                                    color: appTheme.black900,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getFontSize(16),
                                  ),
                                ),
                        ),
                      ),
                    ],
                  );
                },
                init: BasicDetailsController(),
              ),
            ),
          ]),
        ),
        bottomNavigationBar: CustomElevatedButton(
            text: "lbl_save".tr,
            onTap: () {
              onTapArrowleftone();
            },
            margin: getMargin(left: 16, right: 16, bottom: 40)
        ),
    );
  }

  onTapArrowleftone() {
    Get.back();
  }
}

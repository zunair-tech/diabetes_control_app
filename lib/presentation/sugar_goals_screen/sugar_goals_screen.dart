import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/controller/basic_details_controller.dart';
import 'package:flutter/material.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/sugar_goals_controller.dart';

// ignore: must_be_immutable
class SugarGoalsScreen extends GetWidget<SugarGoalsController> {
  SugarGoalsScreen({Key? key}) : super(key: key);

  BasicDetailsController basicDetailsController = Get.put(
      BasicDetailsController());

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
        backgroundColor: appTheme.white,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBarText(
                  text: 'Step 5',
                ),
                Divider(
                  thickness: getSize(1.5),
                  color: appTheme.gray90014,
                ),
                Padding(
                  padding: getPadding(top: 30, right: 16, left: 16, bottom: 24),
                  child: Text("msg_your_blood_sugar".tr,
                      style: theme.textTheme.headlineSmall),
                ),
                Expanded(
                  child: GetBuilder<SugarGoalsController>(
                      init: SugarGoalsController(),
                      builder: (logic) {
                    return ListView(
                      padding: getPadding(left: 16, right: 16),
                      children: [
                        Padding(
                          padding: getPadding(bottom: 16),
                          child: CustomTextFormField(
                            onChanged: (value) {
                              controller.lowestController.text = value;
                              controller.update();
                            },


                            controller: controller.lowestController,
                            filled: true,
                            autofocus: false,
                            fillColor: appTheme.gray100,
                            borderDecoration: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(
                                  12,
                                ),
                              ),
                              borderSide: BorderSide(
                                color: Color(0xFFF8F8F8),
                                width: getSize(1),
                              ),
                            ),
                            hintText: 'Lowest value',
                            hintStyle: TextStyle(
                                fontSize: getFontSize(16),
                                fontWeight: FontWeight.w400,
                                color: Color(0xFF7C7C7C)
                            ),
                            textInputType: TextInputType.number,
                            textInputAction: TextInputAction.done,
                            suffix: Padding(
                              padding: getPadding(top: 18, right: 14.71),
                              child: Text('mg/dl', style: TextStyle(
                                  color: appTheme.black900,
                                  fontWeight: FontWeight.w400,
                                  fontSize: getFontSize(16)
                              ),),
                            ),
                          ),
                        ),
                        CustomTextFormField(
                          onChanged: (value) {
                            controller.highestController.text = value;
                            controller.update();
                          },
                          controller: controller.highestController,
                          filled: true,
                          autofocus: false,
                          fillColor: appTheme.gray100,
                          hintText: 'Highest value',
                          borderDecoration: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              getHorizontalSize(
                                12,
                              ),
                            ),
                            borderSide: BorderSide(
                              color: Color(0xFFF8F8F8),
                              width: getSize(1),
                            ),
                          ),
                          hintStyle: TextStyle(
                              fontSize: getFontSize(16),
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF7C7C7C)
                          ),
                          textInputType: TextInputType.number,
                          textInputAction: TextInputAction.done,
                          suffix: Padding(
                            padding: getPadding(top: 18, right: 14.71),
                            child: Text('mg/dl', style: TextStyle(
                                color: appTheme.black900,
                                fontWeight: FontWeight.w400,
                                fontSize: getFontSize(16)
                            ),),
                          ),
                        ),
                      ],
                    );
                  }),
                )
              ]),
        ),
        bottomNavigationBar: GetBuilder<SugarGoalsController>(
          builder: (controller) {
            return GestureDetector(

              onTap: () {
                if (controller.lowestController.text.isNotEmpty) {
                  basicDetailsController.sugar =
                  '${controller.lowestController.text} mg/dl';
                  basicDetailsController.isSugar = true;
                  basicDetailsController.allSelectData();
                  basicDetailsController.update();
                } else if (controller.highestController.text.isNotEmpty) {
                  basicDetailsController.sugar =
                  '${controller.highestController.text} mg/dl';
                  basicDetailsController.isSugar = true;
                  basicDetailsController.allSelectData();
                  basicDetailsController.update();
                } else {
                  basicDetailsController.sugar = '50 mg/ dl';
                  basicDetailsController.isSugar = true;
                  basicDetailsController.allSelectData();
                  basicDetailsController.update();
                }
                onTapConfirm();
              },
              child: Container(
                height: getSize(54),
                margin: getMargin(left: 16, right: 16, bottom: 40),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: controller.lowestController.text.isEmpty ? controller
                      .highestController.text.isEmpty
                      ? Color(0xFFE7E7E7)
                      : theme.colorScheme.primary : Color(0xFF62B47F),
                  borderRadius: BorderRadius.circular(getHorizontalSize(12),
                  ),
                ),
                child: Padding(
                  padding: getPadding(top: 13, bottom: 13),
                  child: Text('Confirm', style: TextStyle(
                    color: controller.lowestController.text.isEmpty ? controller
                        .highestController.text.isEmpty
                        ? Color(0xFF7C7C7C)
                        : Colors.white : Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: getFontSize(18),
                  ),),
                ),
              ),
            );
          }, init: SugarGoalsController(),)
    );
  }


  onTapConfirm() {
    Get.back();
  }
}

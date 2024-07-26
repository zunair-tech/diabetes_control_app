import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/controller/basic_details_controller.dart';
import 'package:diabetes_control_app/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'controller/therapy_type_controller.dart';

// ignore_for_file: must_be_immutable
class TherapyTypeScreen extends GetWidget<TherapyTypeController> {
  TherapyTypeScreen({Key? key})
      : super(
          key: key,
        );
  BasicDetailsController basicDetailsController =
      Get.put(BasicDetailsController());

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
              text: 'Step 3',
            ),
            Divider(
              color: appTheme.gray200,
              thickness: getHorizontalSize(1.5),
            ),
            Padding(
              padding: getPadding(top: 30, bottom: 24, left: 16),
              child: Text(
                "msg_what_is_your_therapy".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
            Expanded(
                child: GetBuilder<TherapyTypeController>(
              builder: (controller) {
                return ListView(
                  padding: EdgeInsets.zero,
                  children: [
                    Padding(
                      padding: getPadding(
                          left: getSize(16),
                          right: getSize(16),
                          bottom: getSize(16)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ListTileTheme(
                          contentPadding: const EdgeInsets.all(0),
                          tileColor: Colors.transparent,
                          dense: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.tileExpanded?Color(0x1A694ACD):Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Color(0xFFF8F8F8), width: getSize(0.75)),
                            ),
                            child: Padding(
                              padding:
                                  EdgeInsets.symmetric(horizontal: getSize(16)),
                              child: ExpansionTile(
                                backgroundColor: Colors.transparent,
                                onExpansionChanged: (bool expanded) {
                                  controller.firstTileExpanded =false;
                                  controller.update();
                                  controller.tileExpanded = expanded;
                                  basicDetailsController.update();
                                  basicDetailsController.therapy = 'insulin';
                                  basicDetailsController.isTherapy =true;
                                  basicDetailsController.update();
                                  controller.update();
                                },
                                trailing: controller.tileExpanded
                                    ? Container(
                                        height: getSize(20),
                                        width: getSize(20),
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: appTheme.greenA700,
                                                width: getSize(2))),
                                        child: Padding(
                                          padding: getPadding(all: 3),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: appTheme.greenA700,
                                              shape: BoxShape.circle,
                                            ),
                                          ),
                                        ),
                                      )
                                    : Container(
                                        height: getSize(20),
                                        width: getSize(20),
                                        decoration: BoxDecoration(
                                            color: Colors.transparent,
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Color(0xF7C7C7CF),
                                                width: getSize(2))),
                                      ),
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                title: Text(
                                  'Insulin',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getFontSize(16),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                collapsedBackgroundColor: Colors.transparent,
                                collapsedTextColor: Colors.black,
                                collapsedIconColor: Colors.black,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                            getPadding(bottom: 16,right: 50),
                                        child: Text(
                                          'What amount of short-acting insulin do you take a day?',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: getFontSize(16),
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(bottom: 16),
                                        child: CustomTextFormField(
                                          controller: controller.insulinController,
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Value',
                                          textInputAction: TextInputAction.done,
                                          textInputType: TextInputType.number,
                                          suffix: Padding(
                                            padding: getPadding(top: 18,right: 14.71),
                                            child: Text('mg/dl',style: TextStyle(
                                              color: appTheme.black900,
                                              fontWeight: FontWeight.w400,
                                              fontSize: getFontSize(16)
                                            ),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                          left: getSize(16),
                          right: getSize(16),
                          bottom: getSize(16)),
                      child: Theme(
                        data: Theme.of(context)
                            .copyWith(dividerColor: Colors.transparent),
                        child: ListTileTheme(
                          contentPadding: const EdgeInsets.all(0),
                          tileColor: Colors.transparent,
                          dense: true,
                          child: Container(
                            decoration: BoxDecoration(
                              color: controller.firstTileExpanded?Color(0x1A694ACD):Color(0xFFF8F8F8),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                  color: Color(0xFFF8F8F8), width: getSize(1)),
                            ),
                            child: Padding(
                              padding:
                              EdgeInsets.symmetric(horizontal: getSize(16)),
                              child: ExpansionTile(
                                backgroundColor: Colors.transparent,
                                onExpansionChanged: (bool expanded) {
                                  controller.tileExpanded =false;
                                  controller.update();
                                  controller.firstTileExpanded =expanded;
                                  basicDetailsController.update();
                                  basicDetailsController.therapy = 'Pills';
                                  basicDetailsController.isTherapy =true;
                                  basicDetailsController.allSelectData();
                                  basicDetailsController.update();
                                  controller.update();
                                },
                                trailing: controller.firstTileExpanded
                                    ? Container(
                                  height: getSize(20),
                                  width: getSize(20),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: appTheme.greenA700,
                                          width: getSize(2))),
                                  child: Padding(
                                    padding: getPadding(all: 3),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: appTheme.greenA700,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                )
                                    : Container(
                                  height: getSize(20),
                                  width: getSize(20),
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                          color: Color(0xF7C7C7CF),
                                          width: getSize(2))),
                                ),
                                controlAffinity:
                                ListTileControlAffinity.trailing,
                                title: Text(
                                  'Pills',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                    fontSize: getFontSize(16),
                                  ),
                                  textAlign: TextAlign.start,
                                ),
                                collapsedBackgroundColor: Colors.transparent,
                                collapsedTextColor: Colors.black,
                                collapsedIconColor: Colors.black,
                                children: [
                                  Column(
                                    children: [
                                      Padding(
                                        padding:
                                        getPadding(bottom: 16,right: 50),
                                        child: Text(
                                          'What amount of short-acting insulin do you take a day?',
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w400,
                                            fontSize: getFontSize(16),
                                          ),
                                          textAlign: TextAlign.start,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(bottom: 16),
                                        child: CustomTextFormField(
                                          controller: controller.pillsController,
                                          filled: true,
                                          fillColor: Colors.white,
                                          hintText: 'Value',
                                          textInputAction: TextInputAction.done,
                                          textInputType: TextInputType.number,
                                          suffix: Padding(
                                            padding: getPadding(top: 18,right: 14.71),
                                            child: Text('mg/dl',style: TextStyle(
                                                color: appTheme.black900,
                                                fontWeight: FontWeight.w400,
                                                fontSize: getFontSize(16)
                                            ),),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
              init: TherapyTypeController(),
            ))
          ],
        ),
      ),

        bottomNavigationBar: GetBuilder<TherapyTypeController>(builder: (controller) {

          return GestureDetector(
            onTap: () {
              basicDetailsController.update();
              Get.back();
            },
            child: Container(
              height: getSize(54),
              margin: getMargin(left: 16,right: 16,bottom: 40),
              alignment: Alignment.center,
              decoration: BoxDecoration(

                  color: controller.tileExpanded?Color(0xFF62B47F):controller.firstTileExpanded?Color(0xFF62B47F):Color(0xFFE7E7E7),
                  borderRadius: BorderRadius.circular(getHorizontalSize(12),

                  )
              ),
              child: Padding(
                padding: getPadding(top: 13,bottom: 13),
                child: Text('Confirm',style: TextStyle(
                  color: controller.tileExpanded?Colors.white:controller.firstTileExpanded?Colors.white:Color(0xFF7C7C7C),
                  fontWeight: FontWeight.w700,
                  fontSize: getFontSize(18),
                ),),
              ),
            ),
          );
        },init: TherapyTypeController(),)
    );

  }
}

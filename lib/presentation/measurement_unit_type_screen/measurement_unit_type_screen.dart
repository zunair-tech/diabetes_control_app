import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/core/utils/appbar_text.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/controller/basic_details_controller.dart';
import 'package:diabetes_control_app/presentation/measurement_unit_type_screen/widget/select_measurement_type.dart';
import 'package:flutter/material.dart';
import 'controller/measurement_unit_type_controller.dart';

// ignore: must_be_immutable
class MeasurementUnitTypeScreen
    extends GetWidget<MeasurementUnitTypeController> {
   MeasurementUnitTypeScreen({Key? key}) : super(key: key);

  BasicDetailsController basicDetailsController = Get.put(BasicDetailsController());

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
              text: 'Step 4',
             ),
                Divider(
                 color: appTheme.gray90014,
                 thickness: getSize(1.5),
                ),
                Padding(
                  padding: getPadding(top: 12,left: 16,right: 16),
                  child: Text("msg_what_measurement".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.headlineSmall),
                ),
                  Padding(
                    padding:getPadding(top: 24),
                    child: SelectMeasurementType(
                     measurementType: 'mg / dl',
                      value: 1,
                    ),
                  ),
                SelectMeasurementType(
                  measurementType: 'mmoI / I',
                  value: 2,
                ),
              ],
          ),
        ),

      bottomNavigationBar: GetBuilder<MeasurementUnitTypeController>(builder: (controller) {
        return GestureDetector(
          onTap:() {
            onTapConfirm();
          },
          child: Container(
            height: getSize(54),
            margin: getMargin(left: 16,right: 16,bottom: 40),
            alignment: Alignment.center,
            decoration: BoxDecoration(

                // ignore: unrelated_type_equality_checks
                color: controller.card != 0 ?Color(0xFF62B47F):Color(0xFFE7E7E7),
                borderRadius: BorderRadius.circular(getHorizontalSize(12),

                )
            ),
            child: Padding(
              padding: getPadding(top: 13,bottom: 13),
              child: Text('Confirm',style: TextStyle(
                // ignore: unrelated_type_equality_checks
                color: controller.card !=0 ?Colors.white:Color(0xFF7C7C7C),
                fontWeight: FontWeight.w700,
                fontSize: getFontSize(18),
              ),),
            ),
          ),
        );
      },init: MeasurementUnitTypeController(),),

    );
  }

  
  onTapConfirm() {
    Get.back();
  }
}

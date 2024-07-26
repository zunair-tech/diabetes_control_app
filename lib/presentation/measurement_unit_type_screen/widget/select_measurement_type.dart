import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/basic_details_screen/controller/basic_details_controller.dart';
import 'package:diabetes_control_app/presentation/measurement_unit_type_screen/controller/measurement_unit_type_controller.dart';
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class SelectMeasurementType extends StatelessWidget {
  final String? measurementType;
  final int? value;
   SelectMeasurementType({super.key, this.measurementType, this.value});

  BasicDetailsController basicDetailsController = Get.put(BasicDetailsController());

  @override
  Widget build(BuildContext context) {
    return
        GetBuilder<MeasurementUnitTypeController>(builder: (controller) {
          return GestureDetector(
            onTap: () {
              controller.card.value = value!;
              controller.update();
              basicDetailsController.measurementUnit = measurementType!;
              basicDetailsController.isMeasurementUnit =true;
              basicDetailsController.allSelectData();
              basicDetailsController.update();

              controller.update();
            },
            child: Container(
              margin: getMargin(left: 16,right: 16,bottom: 16),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  borderRadius: BorderRadius.circular(getHorizontalSize(8))
              ),
              child: Padding(
                padding: getPadding(left: 16,top: 2,bottom: 2,),
                child: Row(
                  children: [
                    Expanded(
                      child: Text(measurementType??'mg / dl',style: TextStyle(
                        color: appTheme.black900,
                        fontSize: getFontSize(16),
                        fontWeight: FontWeight.w400,
                      ),),
                    ),
                    Theme(

                      data: ThemeData(unselectedWidgetColor: Color(0xFF7C7C7C),),
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Radio(


                          activeColor:appTheme.greenA700,
                          value: value,
                          groupValue: controller.card.value,
                          onChanged: (values){
                            // selectCard;
                            controller.selectCard(values!);
                            basicDetailsController.measurementUnit = measurementType!;
                            basicDetailsController.isMeasurementUnit =true;
                            basicDetailsController.allSelectData();
                            basicDetailsController.update();

                            controller.update();

                          },
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),
          );
        },init: MeasurementUnitTypeController(),);
  }
}

import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/measurement_unit_type_screen/models/measurement_unit_type_model.dart';
import 'package:flutter/material.dart';


class MeasurementUnitTypeController extends GetxController {

  Rx<MeasurementUnitTypeModel> measurementUnitTypeModelObj =
      MeasurementUnitTypeModel().obs;

  RxInt card = 0.obs;
  bool isSelect = false;

  selectCard(int values){
   card.value = values;
   update();
   debugPrint('Card is ---->${card.value}');
  }


}

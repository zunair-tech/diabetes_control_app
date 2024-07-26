import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

/// A controller class for the DiabetesTypeScreen.
///
/// This class manages the state of the DiabetesTypeScreen, including the
/// current diabetesTypeModelObj
class DiabetesTypeController extends GetxController {


 RxInt card = 0.obs;
 bool isSelect = false;

 selectCard(int values){
  card.value = values;
  update();
  debugPrint('Card is ---->${card.value}');
 }


}

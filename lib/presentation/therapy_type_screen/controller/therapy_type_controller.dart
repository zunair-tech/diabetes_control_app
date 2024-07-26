import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/therapy_type_screen/models/therapy_type_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TherapyTypeScreen.
///
/// This class manages the state of the TherapyTypeScreen, including the
/// current therapyTypeModelObj
class TherapyTypeController extends GetxController {

  TextEditingController insulinController = TextEditingController();
  TextEditingController pillsController = TextEditingController();

  bool tileExpanded = false;
  bool firstTileExpanded = false;
  int card = 1;

  Rx<TherapyTypeModel> therapyTypeModelObj = TherapyTypeModel().obs;


}

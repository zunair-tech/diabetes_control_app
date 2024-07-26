import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/diabetes_type_selected_screen/models/diabetes_type_selected_model.dart';import 'package:flutter/material.dart';/// A controller class for the DiabetesTypeSelectedScreen.
///
/// This class manages the state of the DiabetesTypeSelectedScreen, including the
/// current diabetesTypeSelectedModelObj
class DiabetesTypeSelectedController extends GetxController {TextEditingController typeCounterController = TextEditingController();

TextEditingController typeCounterController1 = TextEditingController();

TextEditingController ladaoneController = TextEditingController();

TextEditingController gestationalvaluController = TextEditingController();

Rx<DiabetesTypeSelectedModel> diabetesTypeSelectedModelObj = DiabetesTypeSelectedModel().obs;

Rx<String> radioGroup = "".obs;

Rx<String> radioGroup1 = "".obs;

Rx<String> radioGroup2 = "".obs;

@override void onClose() { super.onClose(); typeCounterController.dispose(); typeCounterController1.dispose(); ladaoneController.dispose(); gestationalvaluController.dispose(); } 
 }

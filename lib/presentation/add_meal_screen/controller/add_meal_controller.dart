import 'package:diabetes_control_app/core/app_export.dart';
import 'package:flutter/material.dart';

/// A controller class for the AddMealScreen.
///
/// This class manages the state of the AddMealScreen, including the
/// current addMealModelObj
class AddMealController extends GetxController {
  TextEditingController dishNameController = TextEditingController();
  TextEditingController glucoseController = TextEditingController();
  TextEditingController carbsController = TextEditingController();

  bool isPhotosSelect = false;

  @override
  void onInit() {
    // TODO: implement onInit
    update();
    super.onInit();
  }
}

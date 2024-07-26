import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/glucose_level_screen/models/glucose_level_model.dart';
import 'package:flutter/material.dart';/// A controller class for the GlucoseLevelScreen.
///
/// This class manages the state of the GlucoseLevelScreen, including the
/// current glucoseLevelModelObj
class GlucoseLevelController extends GetxController {

 Rx<GlucoseLevelModel> glucoseLevelModelObj = GlucoseLevelModel().obs;
 TextEditingController lowestController = TextEditingController();
 TextEditingController highestController = TextEditingController();


 }

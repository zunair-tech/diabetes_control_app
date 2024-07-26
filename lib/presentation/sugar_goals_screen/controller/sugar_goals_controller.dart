import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/sugar_goals_screen/models/sugar_goals_model.dart';
import 'package:flutter/cupertino.dart';/// A controller class for the SugarGoalsScreen.
///
/// This class manages the state of the SugarGoalsScreen, including the
/// current sugarGoalsModelObj
class SugarGoalsController extends GetxController {
 Rx<SugarGoalsModel> sugarGoalsModelObj = SugarGoalsModel().obs;
 TextEditingController lowestController = TextEditingController();
 TextEditingController highestController = TextEditingController();

 }

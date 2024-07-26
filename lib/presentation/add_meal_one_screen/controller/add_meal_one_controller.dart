import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/add_meal_one_screen/models/add_meal_one_model.dart';import 'package:flutter/material.dart';/// A controller class for the AddMealOneScreen.
///
/// This class manages the state of the AddMealOneScreen, including the
/// current addMealOneModelObj
class AddMealOneController extends GetxController {TextEditingController drinknameoneController = TextEditingController();

Rx<AddMealOneModel> addMealOneModelObj = AddMealOneModel().obs;

@override void onClose() { super.onClose(); drinknameoneController.dispose(); } 
 }

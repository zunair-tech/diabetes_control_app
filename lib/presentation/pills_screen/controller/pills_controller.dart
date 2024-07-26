import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/pills_screen/models/pills_model.dart';import 'package:flutter/material.dart';/// A controller class for the PillsScreen.
///
/// This class manages the state of the PillsScreen, including the
/// current pillsModelObj
class PillsController extends GetxController {TextEditingController nameController = TextEditingController();


Rx<PillsModel> pillsModelObj = PillsModel().obs;

String medicineName ='';
int medicineCount = 0;




@override void onClose() { super.onClose(); nameController.dispose(); } 
 }

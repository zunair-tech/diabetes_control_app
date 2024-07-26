import 'package:diabetes_control_app/core/app_export.dart';import 'package:diabetes_control_app/presentation/reset_passsword_screen/models/reset_passsword_model.dart';import 'package:flutter/material.dart';/// A controller class for the ResetPassswordScreen.
///
/// This class manages the state of the ResetPassswordScreen, including the
/// current resetPassswordModelObj
class ResetPassswordController extends GetxController {
 TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<ResetPassswordModel> resetPassswordModelObj = ResetPassswordModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }

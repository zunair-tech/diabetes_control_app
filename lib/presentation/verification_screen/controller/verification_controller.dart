import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/verification_screen/models/verification_model.dart';
import 'package:flutter/material.dart';



class VerificationController extends GetxController  {
  Rx<TextEditingController> otpController = TextEditingController().obs;

  Rx<VerificationModel> verificationModelObj = VerificationModel().obs;



  @override
  void onInit() {
    super.onInit();

  }
}

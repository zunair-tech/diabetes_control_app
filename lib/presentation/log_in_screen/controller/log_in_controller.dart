import 'dart:io';

import 'package:diabetes_control_app/core/app_export.dart';
import 'package:diabetes_control_app/presentation/log_in_screen/models/log_in_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LogInController extends GetxController {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  Rx<LogInModel> logInModelObj = LogInModel().obs;

  onExit() {
   if (Platform.isIOS) {
    exit(0);
   } else {
    SystemNavigator.pop();
   }
  }


  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passwordController.dispose();
  }
}
